"""Turn this project's Markdown into one HTML page, with nothing installed.

    py tools/md_to_html.py README.md readme.html

The point is the page that ships beside the executable: a screen reader moves through HTML by heading,
table and list in a way it cannot through a .md file, where every # and | is read out as itself.

This handles what the project's Markdown actually contains - headings, tables, bullets, block quotes,
four-space code blocks, `code`, **bold** and [links](url) - and nothing else.  It is not a Markdown
implementation; anything it does not know it leaves as text, which for a document we write ourselves is
the safe way round.  `py tools/md_to_html.py --check FILE` names any construct it would not convert.
"""
from __future__ import annotations

import html
import os
import re
import sys

HEADING = re.compile(r'^(#{1,6}) +(.*?)\s*#*$')
BULLET = re.compile(r'^([-*]) +(.*)$')
NUMBERED = re.compile(r'^(\d+)\. +(.*)$')
CODE_SPAN = re.compile(r'`([^`]+)`')
BOLD = re.compile(r'\*\*(.+?)\*\*')
ITALIC = re.compile(r'(?<![*\w])\*([^*\n]+)\*(?!\*)')
LINK = re.compile(r'\[([^\]]+)\]\(([^)]+)\)')
TABLE_RULE = re.compile(r'^\|[\s:|-]+\|$')

STYLE = """
:root { color-scheme: light dark; }
body { margin: 0 auto; padding: 1.5rem 1.25rem 4rem; max-width: 46rem; line-height: 1.55;
       font-family: Georgia, 'Times New Roman', serif; font-size: 1.05rem; }
h1, h2, h3 { font-family: system-ui, sans-serif; line-height: 1.25; margin: 2.2rem 0 0.6rem; }
h1 { font-size: 1.9rem; margin-top: 0; }
h2 { font-size: 1.45rem; border-bottom: 1px solid; padding-bottom: 0.2rem; }
h3 { font-size: 1.15rem; }
code, pre { font-family: Consolas, 'DejaVu Sans Mono', monospace; font-size: 0.92em; }
pre { padding: 0.8rem 1rem; overflow-x: auto; border-left: 3px solid; }
table { border-collapse: collapse; width: 100%; margin: 1rem 0; }
th, td { border: 1px solid; padding: 0.4rem 0.6rem; text-align: left; vertical-align: top; }
th { font-family: system-ui, sans-serif; }
blockquote { margin: 1rem 0; padding: 0.4rem 1rem; border-left: 3px solid; font-style: italic; }
li { margin: 0.35rem 0; }
"""


def _inline(text: str) -> str:
    """One line of Markdown to HTML.  Code spans are taken out first so nothing inside them is marked up."""
    spans: list[str] = []

    def keep(m):
        spans.append(html.escape(m.group(1)))
        return '\x00%d\x00' % (len(spans) - 1)

    text = CODE_SPAN.sub(keep, text)
    text = html.escape(text, quote=False)   # ' and " are text here, not markup
    text = LINK.sub(lambda m: '<a href="%s">%s</a>' % (html.escape(m.group(2), quote=True), m.group(1)), text)
    text = BOLD.sub(r'<strong>\1</strong>', text)
    text = ITALIC.sub(r'<em>\1</em>', text)
    return re.sub('\x00(\\d+)\x00', lambda m: '<code>%s</code>' % spans[int(m.group(1))], text)


def _cells(row: str) -> list[str]:
    return [c.strip() for c in row.strip().strip('|').split('|')]


def convert(md: str, title: str | None = None) -> str:
    lines = md.replace('\r\n', '\n').split('\n')
    out: list[str] = []
    para: list[str] = []
    list_open = False
    i = 0

    def close_para():
        nonlocal para
        if para:
            out.append('<p>%s</p>' % _inline(' '.join(para)))
            para = []

    def close_list():
        nonlocal list_open
        if list_open:
            out.append('</ul>')
            list_open = False

    while i < len(lines):
        line = lines[i]

        if not line.strip():                                        # blank: end whatever is open
            close_para()
            close_list()
            i += 1
            continue

        m = HEADING.match(line)
        if m:
            close_para(); close_list()
            level = min(len(m.group(1)), 6)
            out.append('<h%d>%s</h%d>' % (level, _inline(m.group(2)), level))
            i += 1
            continue

        if line.startswith('|') and i + 1 < len(lines) and TABLE_RULE.match(lines[i + 1]):
            close_para(); close_list()
            head = _cells(line)
            i += 2
            out.append('<table>')
            if any(h for h in head):                                # a head of empty cells is a layout table
                out.append('<thead><tr>%s</tr></thead>'
                           % ''.join('<th scope="col">%s</th>' % _inline(h) for h in head))
            out.append('<tbody>')
            while i < len(lines) and lines[i].startswith('|'):
                out.append('<tr>%s</tr>' % ''.join('<td>%s</td>' % _inline(c) for c in _cells(lines[i])))
                i += 1
            out.append('</tbody></table>')
            continue

        if line.startswith('> '):
            close_para(); close_list()
            quote = []
            while i < len(lines) and lines[i].startswith('>'):
                quote.append(lines[i][1:].lstrip())
                i += 1
            out.append('<blockquote><p>%s</p></blockquote>' % _inline(' '.join(q for q in quote if q)))
            continue

        if line.startswith('    ') and not list_open:               # a four-space code block
            close_para()
            block = []
            while i < len(lines) and (lines[i].startswith('    ') or not lines[i].strip()):
                if not lines[i].strip() and not (i + 1 < len(lines) and lines[i + 1].startswith('    ')):
                    break
                block.append(lines[i][4:] if lines[i].startswith('    ') else '')
                i += 1
            out.append('<pre><code>%s</code></pre>' % html.escape('\n'.join(block).rstrip()))
            continue

        m = BULLET.match(line)
        if m:
            close_para()
            if not list_open:
                out.append('<ul>')
                list_open = True
            item = [m.group(2)]
            i += 1
            while i < len(lines) and lines[i].startswith('  ') and lines[i].strip() \
                    and not BULLET.match(lines[i].strip()):
                item.append(lines[i].strip())
                i += 1
            out.append('<li>%s</li>' % _inline(' '.join(item)))
            continue

        para.append(line.strip())
        i += 1

    close_para()
    close_list()

    body = '\n'.join(out)
    if title is None:
        m = re.search(r'<h1>(.*?)</h1>', body)
        title = re.sub(r'<[^>]+>', '', m.group(1)) if m else 'Read me'
    return ('<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n'
            '<meta name="viewport" content="width=device-width, initial-scale=1">\n'
            '<title>%s</title>\n<style>%s</style>\n</head>\n<body>\n<main>\n%s\n</main>\n</body>\n</html>\n'
            % (html.escape(title), STYLE, body))


def unhandled(md: str) -> list[str]:
    """Constructs this converter does not know, so a document can be checked before it is shipped."""
    found = []
    for n, line in enumerate(md.split('\n'), 1):
        if line.startswith('```') or line.startswith('~~~'):
            found.append('%d: fenced code block' % n)
        elif NUMBERED.match(line):
            found.append('%d: numbered list' % n)
        elif re.match(r'^\s+[-*] ', line):
            found.append('%d: nested list' % n)
        elif '![' in line:
            found.append('%d: image' % n)
        elif re.match(r'^(=+|-{3,})$', line.strip()) and n > 1:
            found.append('%d: underlined heading or rule' % n)
    return found


def main(argv) -> int:
    if len(argv) == 2 and argv[0] == '--check':
        problems = unhandled(open(argv[1], encoding='utf-8').read())
        print('\n'.join(problems) if problems else 'nothing in %s that this cannot convert' % argv[1])
        return 1 if problems else 0
    if len(argv) != 2:
        print(__doc__.strip())
        return 2
    src, dest = argv
    md = open(src, encoding='utf-8').read()
    problems = unhandled(md)
    if problems:
        print('%s uses things this does not convert:' % src)
        print('\n'.join('  ' + p for p in problems))
        return 1
    with open(dest, 'w', encoding='utf-8', newline='\n') as f:
        f.write(convert(md))
    print('%s -> %s (%d bytes)' % (src, dest, os.path.getsize(dest)))
    return 0


if __name__ == '__main__':
    sys.exit(main(sys.argv[1:]))
