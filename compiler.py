"""Build Audio Defence into an executable with PyInstaller.

Double-click this file, or run py compiler.py with nothing after it, and it offers a numbered menu of
builds, then waits for Enter at the end so you can hear how it went.  Its first choice is the release
build.  Every other choice is one of these flags, which still work typed out:

    py compiler.py --test         build, then start the result and check its log
    py compiler.py --no-package   the folder alone, without the release zip
    py compiler.py --clean        empty PyInstaller's cache first
    py compiler.py --console      keep a console window, to see why the game will not start
    py compiler.py --onefile      a single executable instead (unpacks itself at every launch)
    py compiler.py --no-game      leave the game's data out
    py compiler.py --dry-run      say what a build would do, build nothing

A build makes one folder, dist\\AudioDefence, with the game's data copied in, and ends by zipping it into
dist\\AudioDefence-Win-<VERSION>.zip, which is what a release's asset is and what the updater reads.

The release build - no flags at all - also files the changelog first: the lines under "unrelease:" go
under this version's heading in the repository's changelog.txt, and the copy beside the executable opens
on that version.  Every build ends by saying whether there is anything to commit.  Run with no flags and no
keyboard (from a script), it is the release build straight away, without the menu.

The port, the HRTF and the vendored DLLs go inside the build; the game's own files do not - they are
copied next to the executable, where audiodefence/paths.py looks for them when frozen.  See the README.
"""
from __future__ import annotations

import argparse
import importlib.util
import os
import re
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


# --- the changelog -----------------------------------------------------------------------------------
# changelog.txt collects what has changed under one heading, "unrelease:", at the top.  A plain build -
# py compiler.py with no flags at all - files those lines under the version being built, in the
# repository's changelog, and ships a copy that opens on that version instead.  Any flag leaves the
# changelog exactly as it is: a build with a flag is a build for trying something, not a release.

#: The heading the changelog collects unreleased changes under: the whole line, colon and all.
UNRELEASE = 'unrelease:'
#: What VERSION starts at when a plain build finds there is none.
FIRST_VERSION = '1.0.0-1'
#: A heading is one word ending in a colon - "unrelease:", "26.09.20:".  The entries are sentences, so a
#: line with a space in it, colons and all, is never taken for one.
_HEADING = re.compile(r'^[^\s:]+:$')


def changelog_heading(version: str) -> str:
    """'26.09.21-1' -> '26.09.21-1:'.  The heading is VERSION exactly as written, build number and all.
    Nothing here works a version out: build again without changing VERSION and the new lines join the
    same entry; change the number in VERSION and the next release build starts a new one."""
    return version + ':'


def _parse_changelog(text: str) -> list:
    """[[heading, [lines]], ...] in the order of the file.  Blank lines only separate one version from
    the next, so they are not kept; anything above the first heading is a block with no heading."""
    blocks = []
    for line in text.replace('\r\n', '\n').split('\n'):
        if _HEADING.match(line.strip()):
            blocks.append([line.strip(), []])
        elif line.strip():
            if not blocks:
                blocks.append([None, []])
            blocks[-1][1].append(line)
    return blocks


def _render_changelog(blocks: list) -> str:
    """A heading, its lines, then one blank line before the next heading, all the way down - so where
    one version's changes end is something you hear, not something you have to work out."""
    return '\n\n'.join('\n'.join(([heading] if heading else []) + lines) for heading, lines in blocks) + '\n'


def plan_changelog(text: str, version: str):
    """What a plain build does to the repository's changelog: (text, changed, what it did).

    The lines under unrelease: move to this version's entry - a new one just below unrelease:, or the
    bottom of the one already there when this is a second build of the same day - and unrelease: stays
    at the top, empty, for whatever changes next.  With nothing under it the text comes back as it was.
    If the unrelease: line has been deleted, it is put back."""
    blocks = _parse_changelog(text)
    notes = []
    at = next((i for i, (heading, _lines) in enumerate(blocks) if heading == UNRELEASE), None)
    if at is None:
        blocks.insert(0, [UNRELEASE, []])
        at = 0
        notes.append('there was no "%s" line, so one was put back at the top' % UNRELEASE)
    moving, heading = blocks[at][1], changelog_heading(version)
    if moving:
        blocks[at][1] = []
        entry = next((block for block in blocks if block[0] == heading), None)
        if entry is not None:
            entry[1].extend(moving)
            notes.append('%d line(s) from "%s" went to the bottom of %s' % (len(moving), UNRELEASE, heading))
        else:
            blocks.insert(at + 1, [heading, moving])
            notes.append('%d line(s) from "%s" became the new entry %s' % (len(moving), UNRELEASE, heading))
    else:
        notes.append('nothing is under "%s", so no entry was added' % UNRELEASE)
    changed = bool(moving) or len(notes) > 1
    return (_render_changelog(blocks) if changed else text), changed, notes


def without_unrelease(text: str) -> str:
    """The changelog a player reads: the same, less the empty unrelease: heading, so it opens on the
    newest version.  A heading that still has lines under it is left alone rather than lose them."""
    return _render_changelog([b for b in _parse_changelog(text) if not (b[0] == UNRELEASE and not b[1])])


def prepare_release_files() -> list:
    """A plain build's work on the repository, done before anything is copied: VERSION started if there
    is none, and the changelog's unreleased lines filed under this version.  Returns the files it
    changed, so the build can say at the end that they want committing."""
    changed = []
    if not build_version():
        with open(os.path.join(HERE, 'VERSION'), 'w', encoding='utf-8', newline='\n') as fh:
            fh.write(FIRST_VERSION + '\n')
        say('VERSION did not exist, so it has been started at %s.' % FIRST_VERSION)
        changed.append('VERSION')
    path = os.path.join(HERE, 'changelog.txt')
    text = open(path, encoding='utf-8').read() if os.path.isfile(path) else ''
    new, did, notes = plan_changelog(text, build_version())
    for note in notes:
        say('changelog: %s' % note)                 # no full stop: most notes end on a heading's colon
    if did:
        with open(path, 'w', encoding='utf-8', newline='\n') as fh:
            fh.write(new)
        changed.append('changelog.txt')
    return changed


def strip_shipped_changelog(dest_root: str) -> None:
    """Take the empty unrelease: heading out of the copy beside the executable - the copy only."""
    path = os.path.join(dest_root, 'changelog.txt')
    if os.path.isfile(path):
        text = open(path, encoding='utf-8').read()
        with open(path, 'w', encoding='utf-8', newline='\n') as fh:
            fh.write(without_unrelease(text))


def release_warnings(changelog: str) -> list:
    """What would make this a bad thing to publish, judged on the changelog the build actually carries."""
    found = []
    if not build_version():
        found.append('there is no VERSION file, so the built game will not know what version it is '
                     'and will never offer an update')
    try:
        with open(changelog, encoding='utf-8') as fh:
            first = fh.readline().strip()
        if first == UNRELEASE:
            found.append('the changelog in this build still opens with "%s", because only the release '
                         'build files the changelog; choose it, number 1, from the menu to put those lines '
                         'under the version' % UNRELEASE)
    except OSError:
        found.append('there is no changelog.txt, so the release notes would be empty')
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
            found.append('%s is empty - rebuild the HRTF with: py tools/build_hrtf.py' % src)
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
    parser = argparse.ArgumentParser(prog='compiler.py', description='build Audio Defence with PyInstaller')
    parser.add_argument('--onefile', action='store_true',
                        help='one executable instead of one folder (unpacks itself at every launch)')
    parser.add_argument('--no-game', action='store_true',
                        help="do not copy the game's data next to the executable")
    parser.add_argument('--console', action='store_true',
                        help='keep a console window, where a failed start-up prints its traceback')
    parser.add_argument('--clean', action='store_true', help="throw away PyInstaller's cache first")
    parser.add_argument('--test', action='store_true', help='start the result afterwards and check its log')
    parser.add_argument('--no-package', action='store_true',
                        help='do not zip the folder afterwards; a build makes the release archive by default')
    parser.add_argument('--dry-run', action='store_true', help='print what would be done, build nothing')
    args = parser.parse_args(argv)
    os.chdir(HERE)                                      # the paths above are relative to the project
    # a plain build is a release: only then is the changelog filed under the version
    flagged = any((args.onefile, args.no_game, args.console, args.clean, args.test, args.no_package))
    plain = not flagged and not args.dry_run

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
        if flagged:
            say('the changelog would be copied as it is, because a build with a flag leaves it alone.')
        else:                                           # what the same command without --dry-run would do
            version = build_version() or FIRST_VERSION
            if not build_version():
                say('VERSION does not exist, so it would be started at %s.' % FIRST_VERSION)
            path = os.path.join(HERE, 'changelog.txt')
            text = open(path, encoding='utf-8').read() if os.path.isfile(path) else ''
            _new, did, notes = plan_changelog(text, version)
            say('without --dry-run, the changelog in the repository would be %s:'
                % ('changed' if did else 'left alone'))
            for note in notes:
                say('  %s' % note)
            say("and the build's copy would open on %s, without the %s line."
                % (changelog_heading(version), UNRELEASE))
        zip_version = build_version() or (FIRST_VERSION if not flagged else '<no VERSION file>')
        if args.no_package:
            say('it would not be zipped, because of --no-package.')
        else:
            say('it would then be packed into dist%s%s-Win-%s.zip' % (os.sep, NAME, zip_version))
        if flagged:
            for warning in release_warnings(os.path.join(HERE, 'changelog.txt')):
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
    # only once PyInstaller has succeeded: a failed build must not leave the repository changed
    changed = prepare_release_files() if plain else []
    copy_side_files(dest_root)
    if plain:
        strip_shipped_changelog(dest_root)

    if not args.no_package:
        for warning in release_warnings(os.path.join(dest_root, 'changelog.txt')):
            say('before releasing: ' + warning)
        package(dest_root)

    exe = os.path.join(dest_root, NAME + '.exe')
    say()
    say('the game is %s' % exe)
    say("the folder around it is what you hand over, and the game's own files in it are Somethin' Else's.")
    result = test_build(exe) if args.test else 0
    say()
    say(commit_notice(changed))                         # last, so it is the thing left to hear
    return result


def commit_notice(changed: list) -> str:
    """Whether the build left anything in the repository to commit.  Only the release build ever does."""
    if not changed:
        return 'Nothing in the changelog was changed, so there is no need to commit.'
    many = len(changed) > 1
    return ('%s %s changed: commit and push %s before you tag the release.'
            % (' and '.join(changed), 'were' if many else 'was', 'them' if many else 'it'))


# --- the menu ----------------------------------------------------------------------------------------
# Double-click compiler.py, or run it with nothing after it, and it asks rather than expects you to know
# the flags.  Each choice is exactly one of the command lines below, so the two can never disagree; the
# flags still work as they always have for anyone typing them.

MENU = (
    ('Release build: file the changelog under the version, build, and zip', []),
    ('Test build: build, zip, then run it for ten seconds and check its log', ['--test']),
    ('Build without the zip', ['--no-package']),
    ("Clean build: empty PyInstaller's cache first, for when a build behaves oddly", ['--clean']),
    ("Build with a console window, to see why the game will not start", ['--console']),
    ('One-file build: a single executable instead of a folder', ['--onefile']),
    ("Build without the game's data", ['--no-game']),
    ('Show what a release build would do, without building anything', ['--dry-run']),
)


def menu() -> list | None:
    """Ask which build.  Returns the flags for it, or None to quit."""
    version = build_version()
    say('Audio Defence compiler.  VERSION is %s.'
        % (version or 'missing - a release build will start it at %s' % FIRST_VERSION))
    say()
    for number, (text, _flags) in enumerate(MENU, 1):
        say('  %d. %s' % (number, text))
    say('  0. Quit')
    say()
    while True:
        try:
            choice = input('Type a number and press Enter: ').strip()
        except EOFError:
            return None
        if choice == '0':
            return None
        if choice.isdigit() and 1 <= int(choice) <= len(MENU):
            text, flags = MENU[int(choice) - 1]
            say('%s.' % text.split(':')[0])
            say()
            return list(flags)
        say('There is no choice "%s". Type a number from 0 to %d.' % (choice, len(MENU)))


def run(argv=None) -> int:
    """Flags on the command line build straight away, as they always have.  No flags with a keyboard at
    the other end - a double-click in Explorer, or py compiler.py typed on its own - opens the menu, and
    the window waits at the end so what happened can be heard before it closes.  With no keyboard at
    all, no flags is still the release build it always was."""
    argv = sys.argv[1:] if argv is None else argv
    if argv or not sys.stdin.isatty():
        return main(argv)
    chosen = menu()
    if chosen is None:
        return 0
    try:
        return main(chosen)
    finally:
        say()
        try:
            input('Finished. Press Enter to close this window.')
        except EOFError:
            pass


if __name__ == '__main__':
    sys.exit(run())
