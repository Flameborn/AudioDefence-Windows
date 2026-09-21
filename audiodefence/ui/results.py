"""PORT ADDITION: turn a results screen into text a player can paste somewhere.

The original had one way to share a score, the Twitter sheet on the endless game-over screen, and it is
gone from the port along with Game Center: neither survives outside an iPhone in 2015.  What a player
actually wanted from it - telling somebody else what they just did - is served by putting the result on
the clipboard, which works with whatever they were going to share it in.

**The text is read off the screen, not built beside it.**  Both results screens lay their rows out in a
table, and the copy walks that same table, so what is pasted is what was read out and the two cannot
drift.  Each row keeps the pieces it was made from (``parts``), so "Kills, 87" on screen becomes
"Kills: 87" in the paste rather than being re-derived from the statistics.
"""
from __future__ import annotations

import logging

from ..platform import version
from ..platform.clipboard import copy_text

log = logging.getLogger('ui.results')

COPY_HINT = 'Press Enter to copy these results to the clipboard.'
COPY_LABEL = 'Copy results'


def mark_header(view) -> None:
    """Say that this row is a section heading rather than a value."""
    view.is_header = True
    view.parts = None


def mark_cell(view, text, detail=None) -> None:
    """Keep what a row was made of, so the copy can lay it out its own way."""
    view.is_header = False
    view.parts = (text, detail)


def _row_text(kind_text_detail) -> str:
    """One row as a line of the paste, or '' for a row that should not appear."""
    is_header, text, detail = kind_text_detail
    text = '' if text is None else str(text).strip()
    detail = '' if detail is None else str(detail).strip()
    if is_header:
        return text
    if text and detail:
        return '%s: %s' % (text, detail)
    return text or detail


def rows_from_table(table_view) -> list:
    """A results table as (is_header, text, detail) rows.

    The rows keep the pieces they were built from, so the paste can lay them out its own way instead of
    picking apart the "Kills, 87" a screen reader is given."""
    rows = []
    for view in table_view.children:
        if view.hidden or not view.label:
            continue
        parts = getattr(view, 'parts', None)
        if getattr(view, 'is_header', False) or parts is None:
            rows.append((True, view.label, None))
        else:
            rows.append((False, parts[0], parts[1]))
    return rows


def results_text(heading: str, rows) -> str:
    """The whole result as text: a heading, the sections, and which build produced it."""
    lines = [heading, '']
    for row in rows:
        line = _row_text(row)
        if not line:
            continue
        if row[0]:                                        # a section heading
            if lines and lines[-1] != '':
                lines.append('')
        lines.append(line)
    while lines and lines[-1] == '':
        lines.pop()
    lines.append('')
    lines.append('Audio Defence for Windows %s' % version.text())
    return '\n'.join(lines)


def copy_results(screen, heading: str, rows=None) -> None:
    """The Copy results button: build the text, put it on the clipboard, say what happened.

    `rows` is for a screen that has no results table of its own; everything else reads the table it has
    just laid out, so that the paste and the screen cannot say different things."""
    if rows is None:
        table = getattr(screen, 'table_view', None)
        if table is None:
            screen.speak('There is nothing to copy.')
            return
        rows = rows_from_table(table)
    text = results_text(heading, rows)
    if copy_text(text):
        # Counting the lines is the only way to say "it worked" that is worth hearing: reading the whole
        # thing back would repeat the screen the player has just been through.
        written = len([line for line in text.splitlines() if line])
        screen.speak('Results copied, %d lines. Paste them wherever you like.' % written)
    else:
        screen.speak('The results could not be copied to the clipboard.')
