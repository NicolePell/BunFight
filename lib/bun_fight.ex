defmodule BunFight do
  @moduledoc """
  Documentation for BunFight.
  """

  @doc """
  Start and run the bun fight with a given team.

  ## Examples

      iex> BunFight.start("Ender", "Fly", "Vlad", "Crazy Tom"])
      [["Vlad", "Crazy Tom"], ["Fly", "Ender"]]

  """
  def start(team) do
    Enum.shuffle(team)
    |> Enum.chunk_every(2)
  end

end
