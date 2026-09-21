"""PORT ADDITION: the screens and the background work that offer a new build to the player.

The engine is in ``platform/updater.py``; this is the part the player meets.  Three pieces:

* ``UpdateService`` - one worker thread at a time, doing the waiting-on-a-network parts, handing every
  result back to the run loop with ``call_soon_threadsafe`` so nothing off the main thread touches a
  screen.  The main menu asks it to look quietly when it opens; its Check for updates button asks it to
  look and to say so either way.
* ``offer`` - the Yes/No the player answers.  It is the game's own alert, so it is read and driven the
  way every other screen is, rather than a Windows dialog a screen reader would announce differently.
* ``DownloadScreen`` - what is on screen while the files come down: it says how far along it is at
  intervals rather than on every file, because a hundred announcements a second is not progress, and
  Escape stops it.

Nothing here blocks the game: the check is a single call to GitHub, and a player who never opens this
screen never waits for it.
"""
from __future__ import annotations

import logging
import threading

from ..game.parameters import GameParameters
from ..platform import updater, version
from ..platform.runloop import RunLoop
from ..platform.updater import UpdateError
from .host import AlertScreen
from .screens import MenuItem, MenuScreen, Screen

log = logging.getLogger('ui.updates')

#: how often the download screen says where it has got to.  Long enough not to talk over itself, short
#: enough that a slow connection does not feel like a hang.
PROGRESS_INTERVAL = 3.0


class UpdateService:
    """The background half.  One job at a time; asking again while it is busy does nothing."""

    _shared: 'UpdateService | None' = None

    @classmethod
    def shared(cls) -> 'UpdateService':
        if cls._shared is None:
            cls._shared = UpdateService()
        return cls._shared

    def __init__(self):
        self.busy = False
        self.release = None                               # the newest release, once one has been found
        self.checked = False                              # whether a check has finished this session
        self._cancel = False

    # --- the check -------------------------------------------------------------------------------
    def check(self, on_result) -> bool:
        """Look for a newer build.  `on_result(release_or_None, error_or_None)` runs on the main thread."""
        if self.busy:
            return False
        self.busy = True

        def work():
            found, problem = None, None
            try:
                found = updater.check()
            except UpdateError as exc:
                problem = str(exc)
            except Exception as exc:                      # a bug here must not take the game with it
                log.exception('the update check failed')
                problem = 'something went wrong while checking: %s' % exc
            RunLoop.main().call_soon_threadsafe(lambda: self._checked(found, problem, on_result))

        threading.Thread(target=work, name='update-check', daemon=True).start()
        return True

    def _checked(self, release, problem, on_result) -> None:
        self.busy = False
        self.checked = True
        self.release = release
        on_result(release, problem)

    # --- the download ----------------------------------------------------------------------------
    def install(self, release, on_progress, on_done) -> bool:
        """Work out what changed, fetch it, stage it.  `on_done(plan_or_None, error)` on the main thread."""
        if self.busy:
            return False
        self.busy = True
        self._cancel = False

        def work():
            plan, problem = None, None
            try:
                plan = updater.build_plan(release, cancelled=lambda: self._cancel)
                if plan.fetch is None:                    # ranges refused: the whole archive comes down
                    RunLoop.main().call_soon_threadsafe(
                        lambda: on_progress(0, release.asset_size, 'whole'))
                updater.download(plan, progress=lambda d, t, w: RunLoop.main().call_soon_threadsafe(
                    lambda d=d, t=t, w=w: on_progress(d, t, w)), cancelled=lambda: self._cancel)
                if plan.nothing_to_do:
                    problem = 'this build already has every file that release has'
                    plan = None
            except UpdateError as exc:
                problem = None if str(exc) == 'cancelled' else str(exc)
                plan = None
            except Exception as exc:
                log.exception('the update download failed')
                problem = 'something went wrong while downloading: %s' % exc
                plan = None
            RunLoop.main().call_soon_threadsafe(lambda: self._installed(plan, problem, on_done))

        threading.Thread(target=work, name='update-download', daemon=True).start()
        return True

    def cancel(self) -> None:
        self._cancel = True

    def _installed(self, plan, problem, on_done) -> None:
        self.busy = False
        on_done(plan, problem)


# ===================================================================================== the Yes/No offer
def notes_summary(release) -> str:
    """The release notes, shortened to something worth hearing before a Yes or No."""
    text = ' '.join((release.notes or '').split())
    if len(text) > 300:
        text = text[:300].rsplit(' ', 1)[0] + '...'
    return text


def offer(host, release, on_declined=None) -> None:
    """Ask whether to install, and do it if the answer is yes."""
    allowed, why_not = updater.can_update()
    message = 'Version %s is available. You have %s.' % (version.text(release.tag), version.text())
    notes = notes_summary(release)
    if notes:
        message += ' ' + notes
    if not allowed:
        host.push_overlay(AlertScreen(host, 'Update available', message + ' But ' + why_not + '.',
                                      [('OK', None)]))
        return
    message += ' Would you like to download and install it now?'

    def yes():
        host.push_overlay(DownloadScreen(host, release))

    def no():
        GameParameters.shared().set_skipped_update(release.tag)
        if on_declined is not None:
            on_declined()

    host.push_overlay(AlertScreen(host, 'Update available', message, [('Yes', yes), ('No', no)]))


# ==================================================================================== the download screen
class DownloadScreen(MenuScreen):
    """What is on screen while the update comes down.  One row: stop."""

    def __init__(self, host, release):
        super().__init__(host, title='Downloading update')
        self.release = release
        self.plan = None
        self.done = 0
        self.total = 0
        self.finished = False
        self._last_said = 0.0
        self.items = [MenuItem('Stop', self._stop, hint='Press Enter to stop downloading.')]
        self.back_action = self._stop

    def on_present(self) -> None:
        self.speak('Downloading update %s. Working out what has changed.' % version.text(self.release.tag))
        started = UpdateService.shared().install(self.release, self._progress, self._done)
        if not started:
            self.speak('Another update job is already running.')
            self.host.pop_overlay()

    # --- from the worker -------------------------------------------------------------------------
    def _progress(self, done: int, total: int, _what: str) -> None:
        self.done, self.total = done, total
        now = RunLoop.main().now()
        if now - self._last_said < PROGRESS_INTERVAL:
            return
        self._last_said = now
        if total > 0:
            self.speak('%d per cent' % int(100.0 * done / total))

    def _done(self, plan, problem) -> None:
        self.finished = True
        if problem:
            self.host.pop_overlay()
            self.host.push_overlay(AlertScreen(self.host, 'Update failed', problem + '.', [('OK', None)]))
            return
        if plan is None:                                  # cancelled, or nothing to do
            self.host.pop_overlay()
            return
        self.plan = plan
        self.host.pop_overlay()
        self._ask_to_restart(plan)

    def _ask_to_restart(self, plan) -> None:
        message = ('%s downloaded. The game has to close to put the new files in place, and it will '
                   'start again by itself. Your progress is kept. Restart now?'
                   % updater.size_text(plan.download_size or 0))
        ask_to_restart(self.host, plan.staging, plan.remove, message)

    # --- stopping --------------------------------------------------------------------------------
    def _stop(self) -> None:
        if self.finished:
            return
        UpdateService.shared().cancel()
        self.speak('Stopping the download.')


def ask_to_restart(host, staging: str, remove, message: str) -> None:
    """Offer the restart that puts a downloaded update in place.

    Saying no is not the end of it: the files stay where they are and the next start offers them again,
    which is what the wording promises."""

    def yes():
        try:
            updater.apply(staging, remove)
        except UpdateError as exc:
            host.push_overlay(AlertScreen(host, 'Update failed', str(exc) + '.', [('OK', None)]))
            return
        host.quit_game()

    def later():
        Screen.speak('The update is ready. It will be offered again the next time you start the game.')

    host.push_overlay(AlertScreen(host, 'Update ready', message,
                                  [('Restart now', yes), ('Not yet', later)]))


def check_now(host, speak) -> None:
    """A check the player asked for, with the main menu's Check for updates button.

    The quiet check at start-up says nothing when there is no update, which is right when nobody asked;
    a check somebody pressed has to answer either way, or it looks broken."""
    service = UpdateService.shared()
    if service.busy:
        speak('Already checking. One moment.')
        return

    def result(release, problem):
        if problem:
            speak('Could not check for updates: %s.' % problem)
            return
        if release is None:
            speak('You have the newest version, %s.' % version.text())
            return
        offer(host, release)

    if service.check(result):
        speak('Checking for updates.')


# ================================================================== the check the main menu starts quietly
def check_on_start(host, screen) -> None:
    """Called when the main menu opens.  Says nothing unless there is a build worth offering.

    The answer comes back seconds later, by which time the player may have walked into the armoury or
    started a game.  Interrupting that with an alert would be rude and, mid-wave, unfair, so the offer is
    only made while the menu that asked for it is still the screen in front."""
    updater.clean_up_staging()                        # half-finished downloads, and applied ones
    # An update that was downloaded and then put off is already on disk: finish that rather than ask
    # GitHub anything.  This runs whether or not the startup check is switched on, because the player
    # has already said yes to this one.
    waiting, tag, remove = updater.pending_update()
    if waiting is not None:
        allowed, _why_not = updater.can_update()
        if allowed:
            ask_to_restart(host, waiting, remove,
                           'Version %s was downloaded and is waiting. The game has to close to put it '
                           'in place, and it will start again by itself. Your progress is kept. '
                           'Restart now?' % version.text(tag))
            return
    params = GameParameters.shared()
    if not params.check_updates():
        return
    service = UpdateService.shared()
    if service.checked:                                   # once a session is enough
        return
    allowed, why_not = updater.can_update()
    if not allowed:
        log.info('not offering updates: %s', why_not)
        service.checked = True
        return

    def result(release, problem):
        if problem:
            log.info('the quiet update check did not work out: %s', problem)
            return
        if release is None:
            return
        if release.tag == params.skipped_update():
            log.info('%s was already declined', release.tag)
            return
        if host.top() is not screen:
            log.info('%s is available, but the player has moved on; not interrupting', release.tag)
            return
        offer(host, release)

    service.check(result)
