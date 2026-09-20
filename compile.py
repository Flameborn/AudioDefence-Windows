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
import zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
NAME = 'AudioDefence'
ENTRY = 'AudioDefence.py'

PLAY_PACKAGES = (('pygame', 'pygame-ce'), ('numpy', 'numpy'), ('av', 'av'), ('comtypes', 'comtypes'))
DATA = (('assets/hrtf', 'assets/hrtf'),)                        # the game's own HRTF
BINARIES = (('vendor/openal/soft_oal.dll', 'vendor/openal'),    # the audio engine itself
            ('vendor/nvda/nvdaControllerClient64.dll', 'vendor/nvda'))
#: copied beside the executable rather than bundled inside it, so the player can open them: what it is
#: called here, and what it is called there.  LICENSE has no extension, which is the convention on GitHub
#: but means Windows asks what to open it with, so it ships as a .txt.
SIDE_FILES = (('changelog.txt', 'changelog.txt'),
              ('VERSION', 'VERSION'),
              ('LICENSE', 'license.txt'))

#: built beside the executable from the Markdown they are written in, rather than committed as well and
#: left to drift.  A screen reader moves through HTML by heading, table and list; through a .md file it
#: reads every # and | aloud.  tools/md_to_html.py does the conversion, with nothing installed.
GENERATED_PAGES = (('README.md', 'readme.html'),)


def say(text: str = '') -> None:
    print(text, flush=True)


def build_version() -> str:
    """What this build calls itself: the one line in VERSION, or '' when there is no such file."""
    try:
        with open(os.path.join(HERE, 'VERSION'), encoding='utf-8') as fh:
            return fh.read().strip().splitlines()[0].strip()
    except (OSError, IndexError):
        return ''


def package(dest_root: str) -> str:
    """Zip the built folder into the archive a release is made of, and that the updater reads.

    A zip rather than a rar because the updater opens it with Python's own zipfile, and reads single
    files out of it over HTTP so that a small fix is a small download; nothing can do that with a rar
    without shipping an extractor.  Everything sits under one folder inside the archive, so extracting it
    gives a player a folder rather than a heap of files in their Downloads.
    """
    version = build_version()
    name = '%s-Win-%s' % (NAME, version) if version else '%s-Win' % NAME
    archive = os.path.join(HERE, 'dist', name + '.zip')
    if os.path.isfile(archive):
        os.remove(archive)
    say()
    say('packing %s ...' % os.path.basename(archive))
    started = time.perf_counter()
    count = 0
    with zipfile.ZipFile(archive, 'w', zipfile.ZIP_DEFLATED, compresslevel=6) as zf:
        for dirpath, _dirs, files in os.walk(dest_root):
            for filename in sorted(files):
                full = os.path.join(dirpath, filename)
                inside = os.path.join(NAME, os.path.relpath(full, dest_root))
                zf.write(full, inside.replace(os.sep, '/'))
                count += 1
    say('  %d files, %.0f MB, in %.0f seconds.'
        % (count, os.path.getsize(archive) / (1 << 20), time.perf_counter() - started))
    say('upload this as the release asset, and tag the release %s.' % (version or 'with its version'))
    return archive


def release_warnings() -> list:
    """What would make this a bad thing to publish."""
    found = []
    if not build_version():
        found.append('there is no VERSION file, so the built game will not know what version it is '
                     'and will never offer an update')
    try:
        with open(os.path.join(HERE, 'changelog.txt'), encoding='utf-8') as fh:
            first = fh.readline().strip().lower()
        if first.startswith('unrelease'):
            found.append('changelog.txt still starts with "%s": give that section the version number '
                         'and bump VERSION to match the tag you are about to push' % first.rstrip(':'))
    except OSError:
        found.append('changelog.txt is not here, so the release notes would be empty')
    return found


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


def copy_side_files(dest_root: str) -> None:
    """The text the player reads, next to the game rather than inside it."""
    for name, shipped_as in SIDE_FILES:
        src = os.path.join(HERE, name)
        if not os.path.isfile(src):
            say('  %s is not here, so it was not copied.' % name)
            continue
        shutil.copy2(src, os.path.join(dest_root, shipped_as))
        say('%s is beside the executable%s.'
            % (shipped_as, '' if shipped_as == name else ', from %s' % name))
    for md_name, page in GENERATED_PAGES:
        write_page(md_name, os.path.join(dest_root, page))


def write_page(md_name: str, dest: str) -> None:
    """README.md -> readme.html beside the executable."""
    import importlib.util
    converter = os.path.join(HERE, 'tools', 'md_to_html.py')
    source = os.path.join(HERE, md_name)
    if not os.path.isfile(converter) or not os.path.isfile(source):
        say('  %s was not written: %s is missing.'
            % (os.path.basename(dest), md_name if os.path.isfile(converter) else 'tools/md_to_html.py'))
        return
    spec = importlib.util.spec_from_file_location('md_to_html', converter)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    md = open(source, encoding='utf-8').read()
    problems = module.unhandled(md)
    if problems:                                  # say so rather than ship a page with holes in it
        say('  %s was not written: %s uses Markdown the converter does not know -' % (os.path.basename(dest), md_name))
        for problem in problems:
            say('    ' + problem)
        return
    with open(dest, 'w', encoding='utf-8', newline='\n') as f:
        f.write(module.convert(md))
    say('%s is beside the executable, built from %s.' % (os.path.basename(dest), md_name))


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
    parser.add_argument('--package', action='store_true',
                        help='afterwards, zip the folder into the archive a release is made of')
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
        for name, shipped_as in SIDE_FILES:
            say('%s would be copied beside the executable%s%s'
                % (name, '' if shipped_as == name else ', as %s' % shipped_as,
                   '' if os.path.isfile(os.path.join(HERE, name)) else ' - but it is not here'))
        for md_name, page in GENERATED_PAGES:
            say('%s would be built there from %s' % (page, md_name))
        if args.package:
            say('it would then be packed into dist%s%s-Win-%s.zip'
                % (os.sep, NAME, build_version() or '<no VERSION file>'))
        for warning in release_warnings():
            say('before releasing: ' + warning)
        return 0

    started = time.perf_counter()
    if subprocess.run(cmd).returncode != 0:
        say("PyInstaller failed - its own output above says why.")
        return 1
    say('built in %.0f seconds.' % (time.perf_counter() - started))

    dest_root = output_dir(args)
    if not args.no_game:
        copy_game(dest_root)
    copy_side_files(dest_root)

    if args.package:
        for warning in release_warnings():
            say('before releasing: ' + warning)
        package(dest_root)

    exe = os.path.join(dest_root, NAME + '.exe')
    say()
    say('the game is %s' % exe)
    say("the folder around it is what you hand over, and the game's own files in it are Somethin' Else's.")
    return test_build(exe) if args.test else 0


if __name__ == '__main__':
    sys.exit(main())
