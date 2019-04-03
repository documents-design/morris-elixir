defmodule MorrisElixirTest do
  use ExUnit.Case
  doctest MorrisElixir

  test "greets the world" do
    assert MorrisElixir.hello() == :world
  end
end
