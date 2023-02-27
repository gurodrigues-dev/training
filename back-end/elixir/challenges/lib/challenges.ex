defmodule Challenges do
  def hello do # 1000
    IO.puts("Hello World!")
  end

  def calc do # 1001
    {value1, _} = IO.read(:stdio, :line)
    |> Integer.parse()
    {value2, _} = IO.read(:stdio, :line)
    |> Integer.parse()
    IO.puts("X = #{value1+value2}")
  end

  def raio do # 1001
    {raio, _} = IO.read(:stdio,:line)
    |> Float.parse()
    IO.puts("X = #{:erlang.float_to_binary(:math.pow(raio,2) * 3.14159,[decimals: 4])}")
  end

  def sum do # 1003
    {sum1, _} = IO.read(:stdio, :line)#{value1, _} = IO.read(:stdio, :line)
    |> Integer.parse()
    {sum2, _} = IO.read(:stdio, :line)
    |> Integer.parse()
    IO.puts("SOMA = #{sum1 + sum2}")
  end

  def mult do # 1004
    {mult1, _} = IO.read(:stdio, :line)
    |> Integer.parse()
    {mult2, _} = IO.read(:stdio, :line)
    |> Integer.parse()
    IO.puts("PROD = #{mult1 * mult2}")
  end

  def div do # 1005
    {div1, _} = IO.read(:stdio, :line)
    |> Float.parse()
    {div2, _} = IO.read(:stdio, :line)
    |> Float.parse()
    IO.puts("MEDIA = #{(div1 + div2) / 2}")
  end

  def media do #1006
    {nota1, _} = IO.read(:stdio, :line)
    |> Float.parse()
    {nota2, _} = IO.read(:stdio, :line)
    |> Float.parse()
    {nota3, _} = IO.read(:stdio, :line)
    |> Float.parse()
    IO.puts("MEDIA = #{(nota1 + nota2 + nota3) / 3}")
  end

end
