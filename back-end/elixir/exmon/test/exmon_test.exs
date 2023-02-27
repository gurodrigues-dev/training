defmodule ExmonTest do
  use ExUnit.Case
  doctest Exmon

  test "greets the world" do
    assert Exmon.hello() == :world
  end
end
