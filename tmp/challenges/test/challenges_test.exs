defmodule ChallengesTest do
  use ExUnit.Case
  doctest Challenges

  test "greets the world" do
    assert Challenges.hello() == :world
  end
end
