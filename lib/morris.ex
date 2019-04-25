defmodule Morris do
  alias MorrisFrenchRules, as: MFR
  @moduledoc """
  Morris is a locale-defined typographic rules fixer operating both on raw text and text displayed in specific contexts (html, [...]).
  This is an in-progress port of the typescript version of this library, at https://github.com/documents-design/morris
  Morris itself is just a reduction of a list of filters on a string, the work resides on transposing typographic rules to functions in a sensible way, given in a variable width context, there's no notion of "end of a line", or even "lines".
  We try to develop heuristics to improve left-hanging text on the web, namely on pages supposed to be piped to pdf renderers.
  """

  @doc """
  Formats the input string with a set of rules.
  """
  def format(str), do: format(str, :french, :brut)
  def format(str, :french, :brut) do
    str
      |> MFR.trims_the_input_string
      |> MFR.rep_every_type_of_space_with_a_standard_space
      |> MFR.rep_multiple_spaces_in_a_row_with_a_single_one
      |> MFR.rep_three_dots_with_an_ellipsis
      |> MFR.rep_any_double_quote_with_dumb_quotes
      |> MFR.removes_spaces_before_simple_punctuations_and_symbols
      |> MFR.removes_spaces_after_simple_punctuations_and_symbols
      |> MFR.rep_quotes_with_french_quotes
      |> MFR.ins_space_before_some_punctuations_and_symbols
      |> MFR.ins_nbsp_before_some_punctuations_and_symbols
      |> MFR.ins_thin_nbsp_before_some_punctuations_and_symbols
      |> MFR.ins_space_after_some_punctuations_and_symbols
      |> MFR.ins_nbsp_after_some_punctuations_and_symbols
      |> MFR.normalizes_singular_ordinal_numbers
      |> MFR.normalizes_plural_ordinal_numbers
      |> MFR.exposes_ordinal_numbers
      |> MFR.normalizes_titles
      |> MFR.rewrites_centuries
      |> MFR.glues_numbers_to_the_word_after_them
      |> MFR.packs_numbers_by_3_above_10000
      |> MFR.glues_words_less_than_three_letters_to_the_word_after_them
      |> MFR.rep_spaces_after_pronouns_with_nbsps
      |> MFR.glues_capitalized_words_to_the_word_before_them
      |> MFR.glues_lonely_words_with_the_word_before_them
      |> MFR.rep_dashes_inside_words_with_non_break_dashes
      |> MFR.avoids_holes_in_numbers
      |> MFR.rep_unit_exponents_with_correct_exponents
      |> MFR.avoids_chaining_symbol_space_symbol
  end
end
