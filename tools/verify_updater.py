"""Check the updater end to end, against a real HTTP server and a real PowerShell hand-off.

Nothing here touches GitHub or the installed game: a temporary folder stands in for an install, a local
server stands in for the release, and a short-lived process stands in for the running game.  Three things
are proved, in the order an update happens:

1. **Only what changed is downloaded.**  A release whose audio is identical and whose program is not must
   come down as a few bytes, not as the whole archive.
2. **The player's path through it works.**  The main menu's quiet check offers the update, Yes downloads
   it, the restart prompt appears, and No is remembered so the same build is not offered again.
3. **The swap happens after the game exits.**  The hand-off script waits, replaces the files, removes the
   ones the new build drops, leaves everything else alone, starts the game again and clears up.

The install folder is deliberately given a name with a space and a non-ASCII character in it, because
that is the case a .cmd hand-off would get wrong and the reason this one is PowerShell.

Run with no arguments; it exits non-zero on the first failure and says what did not hold.
"""
from __future__ import annotations

import http.server
import json
import os
import shutil
import socketserver
import subprocess
import sys
import threading
import time
import zipfile

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, ROOT)

WORK = os.path.join(os.environ.get('TEMP') or '.', 'audiodefence-updater-check')
failures: list = []


def check(condition: bool, what: str) -> None:
    print('  %-52s %s' % (what, 'yes' if condition else 'NO'))
    if not condition:
        failures.append(what)


def write(path: str, data) -> None:
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'wb') as fh:
        fh.write(data if isinstance(data, bytes) else data.encode('utf-8'))


# ======================================================================= a server that serves byte ranges
class RangeHandler(http.server.SimpleHTTPRequestHandler):
    """SimpleHTTPRequestHandler ignores Range, and serving ranges is the whole point of the exercise."""

    api_body = b''

    def do_GET(self):
        if self.path.startswith('/api'):
            self.send_response(200)
            self.send_header('Content-Type', 'application/json')
            self.send_header('Content-Length', str(len(self.api_body)))
            self.end_headers()
            self.wfile.write(self.api_body)
            return
        path = self.translate_path(self.path)
        if not os.path.isfile(path):
            self.send_error(404)
            return
        size = os.path.getsize(path)
        asked = self.headers.get('Range')
        if not asked:
            self.send_response(200)
            self.send_header('Content-Length', str(size))
            self.send_header('Accept-Ranges', 'bytes')
            self.end_headers()
            with open(path, 'rb') as fh:
                shutil.copyfileobj(fh, self.wfile)
            return
        first, _, last = asked.split('=', 1)[1].partition('-')
        start = int(first)
        end = min(int(last) if last else size - 1, size - 1)
        if start >= size:
            self.send_error(416)
            return
        self.send_response(206)
        self.send_header('Content-Range', 'bytes %d-%d/%d' % (start, end, size))
        self.send_header('Content-Length', str(end - start + 1))
        self.send_header('Accept-Ranges', 'bytes')
        self.end_headers()
        with open(path, 'rb') as fh:
            fh.seek(start)
            self.wfile.write(fh.read(end - start + 1))

    def log_message(self, *args):
        pass


def start_server(directory: str):
    os.chdir(directory)
    socketserver.TCPServer.allow_reuse_address = True
    server = socketserver.TCPServer(('127.0.0.1', 0), RangeHandler)
    threading.Thread(target=server.serve_forever, daemon=True).start()
    return server, 'http://127.0.0.1:%d' % server.server_address[1]


# ================================================================================= the two pretend builds
OLD, NEW = '26.09.20-1', '26.09.21-1'


def build_trees():
    shutil.rmtree(WORK, ignore_errors=True)
    install = os.path.join(WORK, 'Audio Defence لعبة')   # a space and non-ASCII
    newbuild = os.path.join(WORK, 'new', 'AudioDefence')
    audio = os.urandom(3 << 20)                          # the part that never changes between builds
    for tree in (install, newbuild):
        write(os.path.join(tree, 'game', 'sounds', 'voice.bank'), audio)
        write(os.path.join(tree, 'game', 'enemies.plist'), b'<plist/>')
        write(os.path.join(tree, '_internal', 'python312.dll'), b'dll' * 20000)
    write(os.path.join(install, 'AudioDefence.exe'), b'the build the player has')
    write(os.path.join(install, 'VERSION'), OLD + '\n')
    write(os.path.join(install, '_internal', 'stale.pyd'), b'a file the new build drops')
    write(os.path.join(newbuild, 'AudioDefence.exe'), b'the build on GitHub, which differs')
    write(os.path.join(newbuild, 'VERSION'), NEW + '\n')
    write(os.path.join(newbuild, '_internal', 'fresh.pyd'), b'a file the new build adds')

    archive = os.path.join(WORK, 'serve', 'AudioDefence-Win-%s.zip' % NEW)
    os.makedirs(os.path.dirname(archive), exist_ok=True)
    top = os.path.dirname(newbuild)
    with zipfile.ZipFile(archive, 'w', zipfile.ZIP_DEFLATED) as zf:
        for dirpath, _dirs, files in os.walk(newbuild):
            for name in files:
                full = os.path.join(dirpath, name)
                zf.write(full, os.path.relpath(full, top).replace(os.sep, '/'))
    return install, newbuild, archive


def pump(loop, seconds=45.0, until=None) -> bool:
    deadline = time.time() + seconds
    while time.time() < deadline:
        loop.run_once()
        if until is not None and until():
            return True
        time.sleep(0.01)
    return False


class FakeHost:
    """Enough of ScreenManager for the alerts and the download screen."""

    def __init__(self, screen=None):
        self.screen = screen
        self.overlays = []
        self.quit_called = False

    def top(self):
        return self.overlays[-1] if self.overlays else self.screen

    def push_overlay(self, screen):
        self.overlays.append(screen)
        screen.on_present()

    def pop_overlay(self, refocus=True):
        return self.overlays.pop() if self.overlays else None

    def quit_game(self):
        self.quit_called = True


# ================================================================================================= checks
def main() -> int:
    install, newbuild, archive = build_trees()
    server, base = start_server(os.path.dirname(archive))
    zip_url = '%s/%s' % (base, os.path.basename(archive))
    RangeHandler.api_body = json.dumps({
        'tag_name': NEW, 'name': 'Test release', 'body': 'A change worth downloading.',
        'assets': [{'name': os.path.basename(archive), 'browser_download_url': zip_url,
                    'size': os.path.getsize(archive)}]}).encode()

    from audiodefence import paths
    paths.FROZEN = True
    paths.EXE_DIR = install
    paths.user_dir = lambda: WORK
    from audiodefence.platform import updater, version
    from audiodefence.platform.runloop import RunLoop
    from audiodefence.ui import screens, updates
    updater.LATEST_RELEASE = base + '/api'
    said: list = []
    screens.Screen.speak = staticmethod(lambda text, interrupt=True: said.append(text))
    updates.PROGRESS_INTERVAL = 0.0
    loop = RunLoop.main()

    from audiodefence.game.parameters import GameParameters
    params = GameParameters.shared()
    skipped = {'tag': ''}
    params.check_updates = lambda: True
    params.skipped_update = lambda: skipped['tag']
    params.set_skipped_update = lambda tag: skipped.update(tag=tag)

    archive_size = os.path.getsize(archive)
    print('a %s release, against a %s install' % (version.text(NEW), version.text(OLD)))

    # --- 1. only what changed ---------------------------------------------------------------------
    print()
    print('1. the plan downloads only what changed')
    release = updater.Release(json.loads(RangeHandler.api_body))
    plan = updater.build_plan(release)
    wanted = sorted(relative for relative, _entry in plan.fetch)
    check(plan.fetch is not None, 'the archive index was read over HTTP, not downloaded')
    check(wanted == ['AudioDefence.exe', 'VERSION', '_internal/fresh.pyd'],
          'exactly the changed files are fetched')
    check(plan.remove == ['_internal/stale.pyd'], 'the file the new build drops is removed')
    check(plan.unchanged == 3, 'the three unchanged files are left alone')
    check(plan.download_size < archive_size / 100,
          'under one per cent of %s is downloaded' % updater.size_text(archive_size))
    print('     %s instead of %s' % (updater.size_text(plan.download_size),
                                     updater.size_text(archive_size)))

    # --- 2. the player's path ----------------------------------------------------------------------
    print()
    print("2. the player's path through it")
    menu = object()

    # (a) declining first, while there is nothing downloaded to take priority
    host = FakeHost(menu)
    updates.check_on_start(host, menu)
    check(pump(loop, 45, until=lambda: bool(host.overlays)), 'the main menu offers the update by itself')
    if not host.overlays:
        return report()
    offer = host.overlays[-1]
    check([item.label for item in offer.items] == ['Yes', 'No'], 'the offer is a Yes or No')
    check(version.text(NEW) in said[-1], 'the new version is said aloud')
    offer.index = 1
    offer.activate()                                      # No
    check(skipped['tag'] == NEW, 'answering No is remembered for that version')

    updates.UpdateService._shared = None
    quiet = FakeHost(menu)
    updates.check_on_start(quiet, menu)
    pump(loop, 20, until=lambda: bool(quiet.overlays))
    check(not quiet.overlays, 'and the same version is not offered again')

    # (b) accepting: download, put off, and finish it at the next start
    skipped['tag'] = ''
    updates.UpdateService._shared = None
    said.clear()
    host = FakeHost(menu)
    updates.check_on_start(host, menu)
    if not pump(loop, 45, until=lambda: bool(host.overlays)):
        return report()
    offer = host.overlays[-1]
    offer.index = 0
    offer.activate()                                      # Yes
    download = host.overlays[-1]
    check(type(download).__name__ == 'DownloadScreen', 'Yes opens the download screen')
    check(pump(loop, 90, until=lambda: download.finished), 'the download finishes')
    ready = host.overlays[-1] if host.overlays else None
    check(ready is not None and [i.label for i in ready.items] == ['Restart now', 'Not yet'],
          'the restart prompt follows')

    applied = {}
    real_apply = updater.apply
    updater.apply = lambda staging, remove: applied.update(staging=staging, remove=list(remove))
    if ready is not None:
        ready.index = 1
        ready.activate()                                  # Not yet: the files must stay on disk
    waiting, waiting_tag, _remove = updater.pending_update()
    check(waiting is not None and waiting_tag == NEW, 'putting it off keeps the download')
    updater.clean_up_staging()
    still, _tag, _rm = updater.pending_update()
    check(still is not None, 'and the startup sweep does not throw it away')

    updates.UpdateService._shared = None
    host_again = FakeHost(menu)
    updates.check_on_start(host_again, menu)
    offered = host_again.overlays[-1] if host_again.overlays else None
    check(offered is not None and [i.label for i in offered.items] == ['Restart now', 'Not yet'],
          'the next start offers to finish it rather than download again')
    if offered is not None:
        offered.index = 0
        offered.activate()                                # Restart now
    check('staging' in applied, 'Restart now hands the swap over')
    check(host_again.quit_called, 'and the game is asked to close')
    updater.apply = real_apply

    # --- 3. the swap -------------------------------------------------------------------------------
    print()
    print('3. the swap, after the game has exited')
    staging = applied.get('staging')
    removals = applied.get('remove') or []
    if staging is None:
        return report()
    marker = os.path.join(WORK, 'relaunched.txt')
    fake_exe = os.path.join(install, 'relaunch.cmd')
    write(fake_exe, '@echo restarted> "%s"\r\n' % marker)
    holder = subprocess.Popen([sys.executable, '-c', 'import time; time.sleep(5)'])

    # Go through updater.apply() itself rather than building the hand-off here.  An earlier version of
    # this check spawned PowerShell with its own Popen, and so did not notice that apply() was passing
    # DETACHED_PROCESS - which creates the process, runs nothing, and reports no error.  Whatever spawns
    # the script in the game must be what is spawned here.
    real_getpid, real_executable = os.getpid, sys.executable
    os.getpid = lambda: holder.pid                        # apply() waits on the stand-in game
    sys.executable = fake_exe                             # and restarts it afterwards
    try:
        updater.apply(staging, removals)
    finally:
        os.getpid, sys.executable = real_getpid, real_executable

    time.sleep(1.5)
    mid = open(os.path.join(install, 'VERSION'), encoding='utf-8').read().strip()
    check(mid == OLD, 'nothing is touched while the game is still running')
    holder.wait()
    for _ in range(600):
        if os.path.isfile(marker) and                 open(os.path.join(install, 'VERSION'), encoding='utf-8').read().strip() == NEW:
            break
        time.sleep(0.1)

    now = open(os.path.join(install, 'VERSION'), encoding='utf-8').read().strip()
    check(now == NEW, 'the version is the new one afterwards')
    check(os.path.isfile(os.path.join(install, '_internal', 'fresh.pyd')), 'the added file is there')
    check(not os.path.isfile(os.path.join(install, '_internal', 'stale.pyd')), 'the dropped file is gone')
    check(os.path.isfile(marker), 'the game is started again')
    if os.path.isdir(staging):
        updater.clean_up_staging()                        # applied now, so the sweep may have it
    check(not os.path.isdir(staging), 'the staging folder is cleared away')

    problems = []
    for dirpath, _dirs, files in os.walk(newbuild):
        for name in files:
            relative = os.path.relpath(os.path.join(dirpath, name), newbuild)
            here = os.path.join(install, relative)
            if not os.path.isfile(here):
                problems.append('missing: ' + relative)
            elif open(here, 'rb').read() != open(os.path.join(newbuild, relative), 'rb').read():
                problems.append('differs: ' + relative)
    check(not problems, 'the install now matches the new build file for file')
    for problem in problems:
        print('       ' + problem)

    server.shutdown()
    return report()


def report() -> int:
    print()
    if failures:
        print('FAILED (%d):' % len(failures))
        for line in failures:
            print('  ' + line)
        return 1
    print('OK: the updater downloads only what changed, asks before doing anything, '
          'and swaps the files without touching a save.')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
