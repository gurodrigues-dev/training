defmodule FizzBuzzStagTest do
  use ExUnit.Case
  doctest FizzBuzzStag

  test "greets the world" do
    assert FizzBuzzStag.hello() == :world
  end
end
