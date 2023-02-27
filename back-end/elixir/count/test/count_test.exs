defmodule CountTest do
  use ExUnit.Case
  doctest Count

  test "greets the world" do
    assert Count.hello() == :world
  end
end
