defmodule Exmon do
  alias Exmon.{Game, Player}

  @computer_name "Robotinik"

  def create_player(name, move_average, move_random, move_health) do
    Player.build(name, move_average, move_random, move_health)
  end

  def start_game(player) do
    @computer_name
    |> create_player(:punck, :kick, :heal)
    |> Game.start(player)
  end
end
