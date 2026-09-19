"""Build Audio Defence into an executable with PyInstaller.

    python compile.py                one folder in dist\\AudioDefence, the game's data copied in
    python compile.py --onefile      a single executable instead (unpacks itself at every launch)
    python compile.py --test         build, then start the result and check its log
    python compile.py --dry-run      say what would happen, build nothing

The port, the HRTF and the vendored DLLs go inside the build; the game's own files do not - they are
copied next to the executable, where audiodefence/paths.py looks for them when frozen.  See the README.
"""
from __future__ import annotations

import argparse
import importlib.util
import os
import shutil
import subprocess
import sys
import time

HERE = os.path.dirname(os.path.abspath(__file__))
NAME = 'AudioDefence'
ENTRY = 'AudioDefence.py'

PLAY_PACKAGES = (('pygame', 'pygame-ce'), ('numpy', 'numpy'), ('av', 'av'), ('comtypes', 'comtypes'))
DATA = (('assets/hrtf', 'assets/hrtf'),)                        # the game's own HRTF
BINARIES = (('vendor/openal/soft_oal.dll', 'vendor/openal'),    # the audio engine itself
            ('vendor/nvda/nvdaControllerClient64.dll', 'vendor/nvda'))


def say(text: str = '') -> None:
    print(text, flush=True)


def problems_now() -> list[str]:
    """Everything that would stop the build, in plain words."""
    found = []
    if sys.platform != 'win32':
        found.append('this builds a Windows executable, so it has to run on Windows')
    if sys.maxsize <= 2 ** 32:
        found.append('use 64-bit Python: the vendored OpenAL Soft and NVDA DLLs are 64-bit')
    if importlib.util.find_spec('PyInstaller') is None:
        found.append('PyInstaller is not installed in this Python: pip install pyinstaller')
    absent = [pip for mod, pip in PLAY_PACKAGES if importlib.util.find_spec(mod) is None]
    if absent:
        found.append("the game's own packages have to be installed here too, to be bundled: "
                     'pip install ' + ' '.join(absent))
    for src, _ in DATA:
        path = os.path.join(HERE, src.replace('/', os.sep))
        if not os.path.isdir(path) or not os.listdir(path):
            found.append('%s is empty - rebuild the HRTF with: python tools/build_hrtf.py' % src)
    for src, _ in BINARIES:
        if not os.path.isfile(os.path.join(HERE, src.replace('/', os.sep))):
            found.append('%s is missing - it ships with the repository' % src)
    return found


def command(args) -> list[str]:
    cmd = [sys.executable, '-m', 'PyInstaller', '--noconfirm', '--noupx', '--name', NAME]
    for src, dest in DATA:
        cmd += ['--add-data', src + os.pathsep + dest]
    for src, dest in BINARIES:
        cmd += ['--add-binary', src + os.pathsep + dest]
    # both are imported only when first needed, so name them outright rather than hope the analysis finds them
    cmd += ['--collect-all', 'av', '--collect-submodules', 'comtypes']
    if not args.console:
        # no console window beside the game's own; a failed start-up writes crash.txt and says so instead
        cmd += ['--windowed']
    if args.onefile:
        cmd += ['--onefile']
    if args.clean:
        cmd += ['--clean']
    return cmd + [ENTRY]


def output_dir(args) -> str:
    """Where the executable lands, and so where the game's data goes beside it."""
    return os.path.join(HERE, 'dist') if args.onefile else os.path.join(HERE, 'dist', NAME)


def copy_game(dest_root: str) -> bool:
    from audiodefence import paths
    if not os.path.isdir(paths.BUNDLE):
        say("  the game's data is not in %s, so nothing was copied." % paths.BUNDLE)
        say('  the build will need --game PATH, or a game folder put beside the executable.')
        return False
    dest = os.path.join(dest_root, 'game')
    say("copying the game's data into %s ..." % dest)
    started = time.perf_counter()
    shutil.copytree(paths.BUNDLE, dest, dirs_exist_ok=True)
    say('  done in %.0f seconds.' % (time.perf_counter() - started))
    return True


def read_log(text: str, returncode: int, log: str) -> bool:
    """The same three things the README says to look for in a frozen run's log."""
    ok = returncode == 0
    said_where = False
    for line in text.splitlines():
        if 'game data:' in line:
            say('  ' + line.split(' INFO ')[-1])
            ok = ok and '(missing)' not in line
            said_where = True
    if not said_where:
        ok = False
        say('  it wrote nothing to %s, so it never got as far as opening the game.' % log)
    if 'not in use' in text:
        ok = False
        say('  the game HRTF is not in use: assets/hrtf did not make it into the build.')
    if 'Traceback' in text or returncode != 0:
        ok = False
        say('  it did not finish cleanly - the whole story is in %s' % log)
    say('  the built game ran and read its data.' if ok else '  something is wrong, see above.')
    return ok


def test_build(exe: str) -> int:
    from audiodefence import paths
    log = os.path.join(paths.user_dir(), 'audiodefence.log')
    say('starting it for ten seconds ...')
    run = subprocess.run([exe, '--exit-after', '10', '--log-level', 'info'], cwd=os.path.dirname(exe))
    text = open(log, encoding='utf-8', errors='replace').read() if os.path.isfile(log) else ''
    return 0 if read_log(text, run.returncode, log) else 1


def main(argv=None) -> int:
    parser = argparse.ArgumentParser(prog='compile.py', description='build Audio Defence with PyInstaller')
    parser.add_argument('--onefile', action='store_true',
                        help='one executable instead of one folder (unpacks itself at every launch)')
    parser.add_argument('--no-game', action='store_true',
                        help="do not copy the game's data next to the executable")
    parser.add_argument('--console', action='store_true',
                        help='keep a console window, where a failed start-up prints its traceback')
    parser.add_argument('--clean', action='store_true', help="throw away PyInstaller's cache first")
    parser.add_argument('--test', action='store_true', help='start the result afterwards and check its log')
    parser.add_argument('--dry-run', action='store_true', help='print what would be done, build nothing')
    args = parser.parse_args(argv)
    os.chdir(HERE)                                      # the paths above are relative to the project

    found = problems_now()
    if found:
        say('this would stop the build:' if args.dry_run else 'the build cannot start:')
        for problem in found:
            say('  ' + problem)
        if not args.dry_run:
            return 2
        say()

    cmd = command(args)
    say('running: python ' + ' '.join(cmd[1:]))
    if args.dry_run:
        if args.no_game:
            say("the game's data would not be copied.")
        else:
            say("the game's data would then be copied into %s"
                % os.path.join(output_dir(args), 'game'))
        return 0

    started = time.perf_counter()
    if subprocess.run(cmd).returncode != 0:
        say("PyInstaller failed - its own output above says why.")
        return 1
    say('built in %.0f seconds.' % (time.perf_counter() - started))

    dest_root = output_dir(args)
    if not args.no_game:
        copy_game(dest_root)

    exe = os.path.join(dest_root, NAME + '.exe')
    say()
    say('the game is %s' % exe)
    say("the folder around it is what you hand over - and the game's own files in it are Somethin' Else's,")
    say('so keep it to yourself unless you hold the right to pass them on.')
    return test_build(exe) if args.test else 0


if __name__ == '__main__':
    sys.exit(main())
