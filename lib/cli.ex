defmodule BunFight.CLI do

  def main(_args) do
    IO.puts """
      Let's start the Bun Fight!
      ============================

       Commands:\n
       help              Help on using this utility
       help [command]    Help for a given command
    """
  end

  def parse_args(args) do
    parse = OptionParser.parse(args, switches: [help: :boolean],
                                     aliases:  [h: :help])

    case parse do
      {[ help: true], _, _} -> :help
      _ -> :help
    end
  end
end