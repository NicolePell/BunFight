defmodule BunFight.CLITest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  test "running the CLI" do
    execute_main = fn ->
      BunFight.CLI.main([])
    end

    assert capture_io(execute_main) =~ "Let's start the Bun Fight!\n"
  end

  test ":help returned by option parsing with -h and --help or no options" do 
    assert BunFight.CLI.parse_args(["--help"]) == :help
    assert BunFight.CLI.parse_args(["--help", "fight"]) == :help
    assert BunFight.CLI.parse_args([]) == :help
  end

end