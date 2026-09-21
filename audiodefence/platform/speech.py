"""Screen reader output: NVDA through its controller client; otherwise another screen reader through
Prism (JAWS, ZoomText, System Access and the rest, and Narrator); otherwise SAPI 5.

This replaces VoiceOver's reading of labels and UIAccessibilityPostNotification announcements, and the port
counts as a VoiceOver player whichever of them is speaking (Speech.screen_reader_running).
"""
from __future__ import annotations

import ctypes
import logging
import time
from ctypes import wintypes

from .. import paths

log = logging.getLogger('speech')

#: PORT ADDITION: Settings -> Miscellaneous -> Speech output.  Automatic takes the first of NVDA, another
#: screen reader and SAPI 5 that can speak; any other choice speaks through that one only, and the game is
#: silent while it cannot.
OUTPUTS = (('auto', 'Automatic'), ('nvda', 'NVDA'), ('jaws', 'JAWS'), ('narrator', 'Narrator'),
           ('zoomtext', 'ZoomText'), ('systemaccess', 'System Access'), ('windoweyes', 'Window-Eyes'),
           ('pctalker', 'PC-Talker'), ('zdsr', 'ZDSR'), ('boypcreader', 'Boy PC Reader'),
           ('sensereader', 'Sense Reader'), ('sapi', 'SAPI 5'))
#: the choices Prism speaks for, by Prism's own names for them
PRISM_NAMES = {'jaws': 'JAWS', 'narrator': 'UIA', 'zoomtext': 'ZoomText', 'systemaccess': 'SystemAccess',
               'windoweyes': 'WindowEyes', 'pctalker': 'PCTalker', 'zdsr': 'ZDSR', 'boypcreader': 'BoyPCReader',
               'sensereader': 'SenseReader'}


class _Nvda:
    def __init__(self):
        self.dll = None
        try:
            self.dll = ctypes.windll.LoadLibrary(str(paths.NVDA_DLL))
            self.dll.nvdaController_testIfRunning.restype = ctypes.c_ulong
            self.dll.nvdaController_speakText.argtypes = [ctypes.c_wchar_p]
            self.dll.nvdaController_speakText.restype = ctypes.c_ulong
            self.dll.nvdaController_cancelSpeech.restype = ctypes.c_ulong
            self.dll.nvdaController_brailleMessage.argtypes = [ctypes.c_wchar_p]
            self.dll.nvdaController_brailleMessage.restype = ctypes.c_ulong
        except (OSError, AttributeError):
            log.info('NVDA controller client not available')
            self.dll = None

    def running(self) -> bool:
        return bool(self.dll is not None and self.dll.nvdaController_testIfRunning() == 0)

    def speak(self, text: str, interrupt: bool) -> bool:
        if not self.running():
            return False
        if interrupt:
            self.dll.nvdaController_cancelSpeech()
        self.dll.nvdaController_speakText(text)
        self.dll.nvdaController_brailleMessage(text)
        return True

    def stop(self) -> None:
        if self.running():
            self.dll.nvdaController_cancelSpeech()


class _ProcessEntry(ctypes.Structure):                  # PROCESSENTRY32W
    _fields_ = [('dwSize', wintypes.DWORD), ('cntUsage', wintypes.DWORD), ('th32ProcessID', wintypes.DWORD),
                ('th32DefaultHeapID', ctypes.c_size_t), ('th32ModuleID', wintypes.DWORD),
                ('cntThreads', wintypes.DWORD), ('th32ParentProcessID', wintypes.DWORD),
                ('pcPriClassBase', ctypes.c_long), ('dwFlags', wintypes.DWORD),
                ('szExeFile', ctypes.c_wchar * 260)]


def process_running(exe: str) -> bool:
    """Whether a program with this file name ('narrator.exe') is running, from Windows' process list.
    A few milliseconds; False wherever the list cannot be read."""
    try:
        k32 = ctypes.WinDLL('kernel32')
        k32.CreateToolhelp32Snapshot.restype = wintypes.HANDLE
        k32.CreateToolhelp32Snapshot.argtypes = [wintypes.DWORD, wintypes.DWORD]
        k32.Process32FirstW.argtypes = [wintypes.HANDLE, ctypes.POINTER(_ProcessEntry)]
        k32.Process32NextW.argtypes = [wintypes.HANDLE, ctypes.POINTER(_ProcessEntry)]
        k32.CloseHandle.argtypes = [wintypes.HANDLE]
        snap = k32.CreateToolhelp32Snapshot(2, 0)       # TH32CS_SNAPPROCESS
    except (OSError, AttributeError):
        return False
    if not snap or snap == wintypes.HANDLE(-1).value:    # INVALID_HANDLE_VALUE
        return False
    try:
        entry = _ProcessEntry()
        entry.dwSize = ctypes.sizeof(entry)
        exe = exe.lower()
        more = k32.Process32FirstW(snap, ctypes.byref(entry))
        while more:
            if entry.szExeFile.lower() == exe:
                return True
            more = k32.Process32NextW(snap, ctypes.byref(entry))
        return False
    finally:
        k32.CloseHandle(snap)


class _Readers:
    """PORT ADDITION: the screen readers other than NVDA, through Prism (the prismatoid package, optional).

    NVDA keeps its own controller client above, which is asked before every line whether NVDA is running.
    Prism also offers plain voices (OneCore, its own SAPI); those are left out, so with no screen reader
    running the voice is the same SAPI 5 one as before.  Narrator is reached through Prism's UI
    Automation notifications ('UIA'), which Prism ranks last and which report themselves ready whether
    Narrator is running or not - sent with nothing listening, a line would be lost - so the game asks
    Windows itself whether Narrator.exe is running, and uses them only then.  A screen reader started
    while the game runs is looked for every few seconds, and one that stops or fails is let go at once and
    SAPI 5 speaks the line instead.  Prism is loaded only once NVDA is found not to be running, so an NVDA
    player never loads it."""

    SKIP = frozenset({'NVDA', 'OneCore', 'SAPI'})
    NARRATOR = 'UIA'                                      # Prism's name for what Narrator reads
    PROBE_EVERY = 5.0                                     # seconds between looks, while none is speaking
    CHECK_EVERY = 1.0                                     # seconds between asking the one in use

    def __init__(self):
        self.ctx = None
        self.ids = []
        self.reader = None
        self.only = None                                  # the one screen reader chosen, or None for any
        self.next_probe = 0.0
        self.checked = 0.0
        try:
            from prism import Context
            self.ctx = Context()
            self.ids = [bid for bid in (self.ctx.id_of(i) for i in range(self.ctx.backends_count))
                        if self.ctx.name_of(bid) not in self.SKIP]
            log.info('Prism: %s', ', '.join(self.ctx.name_of(bid) for bid in self.ids))
        except Exception as exc:                          # not installed, or its library will not load
            log.info('Prism not available (%s): NVDA and SAPI 5 only', exc)
            self.ctx = None
            self.ids = []

    @classmethod
    def _running(cls, backend) -> bool:
        if backend.name == cls.NARRATOR:
            return process_running('narrator.exe')
        try:
            return bool(backend.features.is_supported_at_runtime)
        except Exception:
            return False

    def _drop(self, why) -> None:
        log.info('speech: %s let go (%s)', self.reader.name, why)
        self.reader = None
        self.next_probe = 0.0                             # look for another at once

    def current(self, only=None):
        """The screen reader to speak through, or None - any of them, or only the one Prism calls `only`."""
        if self.ctx is None:
            return None
        if only != self.only:                             # Speech output changed: look again, for it
            self.only, self.reader, self.next_probe = only, None, 0.0
        now = time.monotonic()
        if self.reader is not None and now - self.checked >= self.CHECK_EVERY:
            self.checked = now
            if not self._running(self.reader):
                self._drop('no longer running')
        if self.reader is None and now >= self.next_probe:
            self.next_probe = now + self.PROBE_EVERY
            for bid in self.ids:
                name = self.ctx.name_of(bid)
                if only is not None and name != only:
                    continue
                if name == self.NARRATOR and not process_running('narrator.exe'):
                    continue                              # not even made, with Narrator off
                try:
                    backend = self.ctx.create(bid)
                except Exception:
                    continue
                if self._running(backend):
                    self.reader, self.checked = backend, now
                    log.info('speech: %s, through Prism', backend.name)
                    break
        return self.reader

    def speak(self, text: str, interrupt: bool, only=None) -> bool:
        reader = self.current(only)
        if reader is None:
            return False
        try:
            if reader.features.supports_output:           # speech, and braille where there is a display
                reader.output(text, interrupt)
            else:
                reader.speak(text, interrupt)
            return True
        except Exception as exc:
            self._drop(exc)
            return False

    def stop(self) -> None:
        if self.reader is not None:
            try:
                self.reader.stop()
            except Exception as exc:
                self._drop(exc)


class _Sapi:
    SVSF_ASYNC = 1
    SVSF_PURGE = 2

    def __init__(self):
        self.voice = None
        try:
            import comtypes.client
            self.voice = comtypes.client.CreateObject('SAPI.SpVoice')
        except Exception:
            log.info('SAPI not available')
            self.voice = None

    def speak(self, text: str, interrupt: bool) -> bool:
        if self.voice is None:
            return False
        flags = self.SVSF_ASYNC | (self.SVSF_PURGE if interrupt else 0)
        self.voice.Speak(text, flags)
        return True

    def stop(self) -> None:
        if self.voice is not None:
            self.voice.Speak('', self.SVSF_ASYNC | self.SVSF_PURGE)


class Speech:
    _shared: 'Speech | None' = None

    @classmethod
    def shared(cls) -> 'Speech':
        if cls._shared is None:
            cls._shared = Speech()
        return cls._shared

    def __init__(self):
        self.nvda = _Nvda()
        self._readers = None
        self._sapi = None
        self.choice = 'auto'                              # Speech output (OUTPUTS), set from the settings
        self._silent = False                              # the chosen one could not speak the last line

    @property
    def readers(self) -> _Readers:
        if self._readers is None:
            self._readers = _Readers()
        return self._readers

    @property
    def sapi(self) -> _Sapi:
        if self._sapi is None:
            self._sapi = _Sapi()
        return self._sapi

    def screen_reader_running(self) -> bool:
        """UIAccessibilityIsVoiceOverRunning() equivalent: always, in the port.

        The original takes its VoiceOver branches - the accessible screens, the spoken game view, Button
        mode on a new profile - only while VoiceOver is on; the other branches are its sighted game, which
        the port has not ported, since it has nothing to look at.  Every screen here is spoken - by NVDA,
        by another screen reader through Prism, or by SAPI 5 - so the VoiceOver branches are always the ones
        taken.  This used to ask whether NVDA was running, which sent a player on SAPI 5 down the sighted
        path: "ADChallengeSelectorViewController is not ported yet" on opening a world's challenges, and
        a game that was not described."""
        return True

    def speak(self, text, interrupt: bool = True) -> None:
        if not text:
            return
        text = str(text)
        log.debug('speak: %s', text)
        choice = self.choice
        if choice not in PRISM_NAMES and choice not in ('nvda', 'sapi'):
            self.speak_automatic(text, interrupt)
            return
        if choice == 'nvda':
            spoken = self.nvda.speak(text, interrupt)
        elif choice == 'sapi':
            spoken = self.sapi.speak(text, interrupt)
        else:
            spoken = self.readers.speak(text, interrupt, PRISM_NAMES[choice])
        if spoken == self._silent:                        # said once, as it starts or stops
            self._silent = not spoken
            log.info('speech: %s %s', dict(OUTPUTS)[choice],
                     'is not running: the game is silent until it is' if self._silent else 'speaks again')

    def speak_automatic(self, text, interrupt: bool = True) -> None:
        """The first of NVDA, another screen reader and SAPI 5 that can speak, whatever Speech output says.
        The game speaks this way on Automatic, and Settings says through it that a chosen screen reader
        is not running, which it could not say through that one."""
        if self.nvda.speak(text, interrupt):
            return
        if self.readers.speak(text, interrupt):
            return
        self.sapi.speak(text, interrupt)

    def can_speak(self, choice: str) -> bool:
        """Whether this Speech output choice can speak right now."""
        if choice == 'auto':
            return True
        if choice == 'nvda':
            return self.nvda.running()
        if choice == 'sapi':
            return self.sapi.voice is not None
        return self.readers.current(PRISM_NAMES.get(choice)) is not None

    def stop(self) -> None:
        choice = self.choice
        if choice == 'nvda':
            if self.nvda.running():
                self.nvda.stop()
        elif choice == 'sapi':
            if self._sapi is not None:
                self._sapi.stop()
        elif choice in PRISM_NAMES:
            if self._readers is not None:
                self._readers.stop()
        elif self.nvda.running():
            self.nvda.stop()
        elif self._readers is not None and self._readers.reader is not None:
            self._readers.stop()
        elif self._sapi is not None:
            self._sapi.stop()
