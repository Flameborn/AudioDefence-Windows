"""Screen reader output: NVDA through its controller client, otherwise SAPI 5.

This replaces VoiceOver's reading of labels and UIAccessibilityPostNotification announcements, and the port
counts as a VoiceOver player whichever of the two is speaking (Speech.screen_reader_running).
"""
from __future__ import annotations

import ctypes
import logging

from .. import paths

log = logging.getLogger('speech')


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
        self._sapi = None

    @property
    def sapi(self) -> _Sapi:
        if self._sapi is None:
            self._sapi = _Sapi()
        return self._sapi

    def screen_reader_running(self) -> bool:
        """UIAccessibilityIsVoiceOverRunning() equivalent: always, in the port.

        The original takes its VoiceOver branches - the accessible screens, the spoken game view, Button
        mode on a new profile - only while VoiceOver is on; the other branches are its sighted game, which
        the port has not ported, since it has nothing to look at.  Every screen here is spoken, by NVDA
        when it is running and by SAPI 5 when it is not, so the VoiceOver branches are always the ones
        taken.  This used to ask whether NVDA was running, which sent a player on SAPI 5 down the sighted
        path: "ADChallengeSelectorViewController is not ported yet" on opening a world's challenges, and
        a game that was not described."""
        return True

    def speak(self, text, interrupt: bool = True) -> None:
        if not text:
            return
        text = str(text)
        log.debug('speak: %s', text)
        if self.nvda.speak(text, interrupt):
            return
        self.sapi.speak(text, interrupt)

    def stop(self) -> None:
        if self.nvda.running():
            self.nvda.stop()
        elif self._sapi is not None:
            self._sapi.stop()
