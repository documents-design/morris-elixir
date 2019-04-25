# MorrisElixir

  Morris is a locale-defined typographic rules fixer operating both on raw text and text displayed in specific contexts (html, [...]).
  This is an in-progress port of the typescript version of this library, at https://github.com/documents-design/morris
  Morris itself is just a reduction of a list of filters on a string, the work resides on transposing typographic rules to functions in a sensible way, given in a variable width context, there's no notion of "end of a line", or even "lines".
  We try to develop heuristics to improve left-hanging text on the web, namely on pages supposed to be piped to pdf renderers.