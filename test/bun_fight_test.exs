defmodule BunFightTest do
  use ExUnit.Case

  test "pair/1 splits team into random pairs" do
    :rand.seed(:exsplus, {1, 2, 3})

    dragon_army = ["Ender", "Fly", "Vlad", "Crazy Tom"]
    assert BunFight.pair(dragon_army) == [["Fly", "Ender"], ["Crazy Tom", "Vlad"]]
  end

  test "availability should collect people available for pairing into a list" do
    dragon_army = [
      %{name: "Ender", available: true},
      %{name: "Fly", available: true},
      %{name: "Vlad", available: true},
      %{name: "Crazy Tom", available: false}
    ]

    assert BunFight.available?(dragon_army) == ["Ender", "Fly", "Vlad"]
  end
end
