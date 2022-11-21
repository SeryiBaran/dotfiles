"""
Caret.

pymdownx.caret
Really simple plugin to add support for

`<ins>test</ins>` tags as `^^test^^` and
`<sup>test</sup>` tags as `^test^`

MIT license.

Copyright (c) 2014 - 2017 Isaac Muse <isaacmuse@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions
of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.
"""
import re
from ..markdown import Extension
from . import util

SMART_CONTENT = r'((?:(?<=\s)\^+?(?=\s)|.)+?\^*?)'
SMART_MIXED_CONTENT = r'((?:\^(?=[^\s])|(?<=\s)\^+?(?=\s))+?\^*)'
CONTENT = r'(\^|[^\s]+?)'
CONTENT2 = r'((?:[^\^]|(?<!\^{2})\^)+?)'

# `^^^ins,sup^^^`
INS_SUP = r'(\^{3})(?!\s)(\^{1,2}|[^\^\s]+?)(?<!\s)\1'
# `^^^ins,sup^ins^^`
INS_SUP2 = r'(\^{3})(?![\s\^])%s(?<!\s)\^%s(?<!\s)\^{2}' % (CONTENT, CONTENT2)
# `^^^sup,ins^^sup^`
SUP_INS = r'(\^{3})(?![\s\^])%s(?<!\s)\^{2}%s(?<!\s)\^' % (CONTENT, CONTENT)
# `^^ins^sup,ins^^^`
INS_SUP3 = r'(\^{2})(?![\s\^])%s\^(?![\s\^])%s(?<!\s)\^{3}' % (CONTENT2, CONTENT)
# `^^ins^^`
INS = r'(\^{2})(?!\s)%s(?<!\s)\1' % CONTENT2
# `^sup^`
SUP = r'(\^)(?!\s)%s(?<!\s)\1' % CONTENT

# Smart rules for when "smart caret" is enabled
# SMART: `^^^ins,sup^^^`
SMART_INS_SUP = r'(\^{3})(?![\s\^])%s(?<!\s)\1' % CONTENT
# `^^^ins,sup^ ins^^`
SMART_INS_SUP2 = \
    r'(\^{3})(?![\s\^])%s(?<!\s)\^(?:(?=_)|(?![\w\^]))%s(?<!\s)\^{2}' % (
        CONTENT, SMART_CONTENT
    )
# `^^^sup,ins^^ sup^`
SMART_SUP_INS = \
    r'(\^{3})(?![\s\^])%s(?<!\s)\^{2}(?:(?=_)|(?![\w\^]))%s(?<!\s)\^' % (
        CONTENT, CONTENT
    )
# `^^ins^^`
SMART_INS = r'(?:(?<=_)|(?<![\w\^]))(\^{2})(?![\s\^])%s(?<!\s)\1(?:(?=_)|(?![\w\^]))' % SMART_CONTENT


class CaretProcessor(util.PatternSequenceProcessor):
    """Emphasis processor for handling insert and superscript matches."""

    PATTERNS = [
        util.PatSeqItem(re.compile(INS_SUP, re.DOTALL | re.UNICODE), 'double', 'ins,sup'),
        util.PatSeqItem(re.compile(SUP_INS, re.DOTALL | re.UNICODE), 'double', 'sup,ins'),
        util.PatSeqItem(re.compile(INS_SUP2, re.DOTALL | re.UNICODE), 'double', 'ins,sup'),
        util.PatSeqItem(re.compile(INS_SUP3, re.DOTALL | re.UNICODE), 'double2', 'ins,sup'),
        util.PatSeqItem(re.compile(INS, re.DOTALL | re.UNICODE), 'single', 'ins'),
        util.PatSeqItem(re.compile(SUP, re.DOTALL | re.UNICODE), 'single', 'sup')
    ]


class CaretSmartProcessor(util.PatternSequenceProcessor):
    """Smart insert and sup processor."""

    PATTERNS = [
        util.PatSeqItem(re.compile(SMART_INS_SUP, re.DOTALL | re.UNICODE), 'double', 'ins,sup'),
        util.PatSeqItem(re.compile(SMART_SUP_INS, re.DOTALL | re.UNICODE), 'double', 'sup,ins'),
        util.PatSeqItem(re.compile(SMART_INS_SUP2, re.DOTALL | re.UNICODE), 'double', 'ins,sup'),
        util.PatSeqItem(re.compile(SMART_INS, re.DOTALL | re.UNICODE), 'single', 'ins'),
        util.PatSeqItem(re.compile(SUP, re.DOTALL | re.UNICODE), 'single', 'sup')
    ]


class CaretSupProcessor(util.PatternSequenceProcessor):
    """Just superscript processor."""

    PATTERNS = [
        util.PatSeqItem(re.compile(SUP, re.DOTALL | re.UNICODE), 'single', 'sup')
    ]


class CaretInsertProcessor(util.PatternSequenceProcessor):
    """Just insert processor."""

    PATTERNS = [
        util.PatSeqItem(re.compile(INS, re.DOTALL | re.UNICODE), 'single', 'ins')
    ]


class CaretSmartInsertProcessor(util.PatternSequenceProcessor):
    """Just smart insert processor."""

    PATTERNS = [
        util.PatSeqItem(re.compile(SMART_INS, re.DOTALL | re.UNICODE), 'single', 'ins')
    ]


class InsertSupExtension(Extension):
    """Add insert and/or superscript extension to Markdown class."""

    def __init__(self, *args, **kwargs):
        """Initialize."""

        self.config = {
            'smart_insert': [True, "Treat ^^connected^^words^^ intelligently - Default: True"],
            'insert': [True, "Enable insert - Default: True"],
            'superscript': [True, "Enable superscript - Default: True"]
        }

        super(InsertSupExtension, self).__init__(*args, **kwargs)

    def extendMarkdown(self, md):
        """Insert `<ins>test</ins>` tags as `^^test^^` and `<sup>test</sup>` tags as `^test^`."""

        config = self.getConfigs()
        insert = bool(config.get('insert', True))
        superscript = bool(config.get('superscript', True))
        smart = bool(config.get('smart_insert', True))

        md.registerExtension(self)

        escape_chars = []
        if insert or superscript:
            escape_chars.append('^')
        if superscript:
            escape_chars.append(' ')
        util.escape_chars(md, escape_chars)

        caret = None
        if insert and superscript:
            caret = CaretSmartProcessor(r'\^') if smart else CaretProcessor(r'\^')
        elif insert:
            caret = CaretSmartInsertProcessor(r'\^') if smart else CaretInsertProcessor(r'\^')
        elif superscript:
            caret = CaretSupProcessor(r'\^')

        if caret is not None:
            md.inlinePatterns.register(caret, "sup_ins", 65)


def makeExtension(*args, **kwargs):
    """Return extension."""

    return InsertSupExtension(*args, **kwargs)
