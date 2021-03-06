defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 52 cards" do
      deck_lengh = length(Cards.create_deck)
      assert deck_lengh == 52
  end

  test "shuffling a deck randomizes it" do
      deck = Cards.create_deck
      refute deck == Cards.shuffle deck
  end
end
