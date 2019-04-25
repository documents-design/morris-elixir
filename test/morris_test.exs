defmodule MorrisTest do
  use ExUnit.Case
  doctest Morris
  doctest MorrisFrenchRules

  test "Progress so far in the elixir port" do
    assert "String  with   multiple spaces and type of spaces" |> Morris.format == "String with multiple spaces and type of spaces"
  end
end
