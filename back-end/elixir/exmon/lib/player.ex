defmodule Exmon.Player do
  @required_keys [:life, :move_average, :move_health, :move_random, :name]
  @max_life 100

  @enforce_keys @required_keys

  defstruct @required_keys

  def build(name, move_avg, move_rnd, move_heal) do
    %Exmon.Player{
      life: @max_life,
      move_average: move_avg,
      move_health: move_heal,
      move_random: move_rnd,
      name: name
    }
  end
end
