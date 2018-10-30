defmodule BunFight.CLITest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  test "CLI" do
    execute_main = fn ->
      BunFight.CLI.main([])
    end

    assert capture_io(execute_main) == "Let's start the Bun Fight!\n"
  end

end