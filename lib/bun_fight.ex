defmodule BunFight do
  @moduledoc """
  Documentation for BunFight.
  """

  @doc """
  Start and run the bun fight with a given team.

  ## Examples

      iex> BunFight.start([
          %{ name: "Ender", available: true },
          %{ name: "Fly", available: true },
          %{ name: "Vlad", available: true },
          %{ name: "Crazy Tom", available: false }
        ])
      [["Vald", "Fly"], ["Ender"]]

  """
  def start(team) do
    available?(team)
    |> pair
  end

  @doc """
  Randomise and pair up given team.

  ## Examples

      iex> BunFight.pair("Ender", "Fly", "Vlad", "Crazy Tom"])
      [["Vlad", "Crazy Tom"], ["Fly", "Ender"]]

  """
  def pair(team) do
    Enum.shuffle(team)
    |> Enum.chunk_every(2)
  end

  @doc """
  Takes a map of people with their availability and returns a list of only the available team members.

  ## Examples

      iex> BunFight.available?([
          %{ name: "Ender", available: true },
          %{ name: "Fly", available: true },
          %{ name: "Vlad", available: true },
          %{ name: "Crazy Tom", available: false }
        ])
      ["Vlad", "Fly", "Ender"]

  """
  def available?(team) do
    for person = %{available: available} <- team, available,
        do: person.name
  end
end
