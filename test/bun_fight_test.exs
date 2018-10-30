defmodule BunFightTest do
  use ExUnit.Case

  test "start/1 splits team into random pairs" do
    :rand.seed(:exsplus, {1, 2, 3})

    dragon_army = ["Ender", "Fly", "Vlad", "Crazy Tom"]
    assert BunFight.start(dragon_army) == [["Fly", "Ender"], ["Crazy Tom", "Vlad"]]
  end

end
