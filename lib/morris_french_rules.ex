defmodule MorrisFrenchRules do
  @doc """
  Trims an input string

  ## Examples
      iex> MorrisFrenchRules.trims_the_input_string(" hello! ")
      "hello!"
  """
  def trims_the_input_string(str), do: String.trim(str)

  @doc """
  Replaces any type of unicode whitespace with a standard space

  ## Examples
      iex> MorrisFrenchRules.rep_every_type_of_space_with_a_standard_space("Normal and   nonbreaking")
      "Normal and   nonbreaking"
  """
  def rep_every_type_of_space_with_a_standard_space(str), do: String.replace(str, ~r/\s/u, " ")

  @doc """
  Replaces any number of spaces with a single one

  ## Examples
      iex> MorrisFrenchRules.rep_multiple_spaces_in_a_row_with_a_single_one("Hello    everybody")
      "Hello everybody"
  """
  def rep_multiple_spaces_in_a_row_with_a_single_one(str), do: String.replace(str, ~r/\s+/, " ")

  @doc """
  Replaces three dots (...) with an ellipsis (…) character.

  ## Examples
      iex> MorrisFrenchRules.rep_three_dots_with_an_ellipsis("Bonjour...")
      "Bonjour…"
  """
  def rep_three_dots_with_an_ellipsis(str), do: String.replace(str, ~r/\.\.\./, "…")

  @doc """
  Replaces any kind of double quote with normal double quotes (")

  ## Examples
      iex> MorrisFrenchRules.rep_any_double_quote_with_dumb_quotes("“Oh!” «Wow»")
      ~s("Oh!" "Wow")
  """
  def rep_any_double_quote_with_dumb_quotes(str), do: String.replace(str, ~r/[“”«»]/, ~s("))

  def removes_spaces_before_simple_punctuations_and_symbols(str), do: str 
  def removes_spaces_after_simple_punctuations_and_symbols(str), do: str 
  def rep_quotes_with_french_quotes(str), do: str 
  def ins_space_before_some_punctuations_and_symbols(str), do: str 
  def ins_nbsp_before_some_punctuations_and_symbols(str), do: str 
  def ins_thin_nbsp_before_some_punctuations_and_symbols(str), do: str 
  def ins_space_after_some_punctuations_and_symbols(str), do: str 
  def ins_nbsp_after_some_punctuations_and_symbols(str), do: str 
  def normalizes_singular_ordinal_numbers(str), do: str 
  def normalizes_plural_ordinal_numbers(str), do: str 
  def exposes_ordinal_numbers(str), do: str 
  def normalizes_titles(str), do: str 
  def rewrites_centuries(str), do: str 
  def glues_numbers_to_the_word_after_them(str), do: str 
  def packs_numbers_by_3_above_10000(str), do: str 
  def glues_words_less_than_three_letters_to_the_word_after_them(str), do: str 
  def rep_spaces_after_pronouns_with_nbsps(str), do: str 
  def glues_capitalized_words_to_the_word_before_them(str), do: str 
  def glues_lonely_words_with_the_word_before_them(str), do: str 
  def rep_dashes_inside_words_with_non_break_dashes(str), do: str 
  def avoids_holes_in_numbers(str), do: str 
  def rep_unit_exponents_with_correct_exponents(str), do: str 
  def avoids_chaining_symbol_space_symbol(str), do: str 
end