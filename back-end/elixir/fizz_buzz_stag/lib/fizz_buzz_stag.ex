defmodule FizzBuzzStag do
  # First Build

  def first_build(file_name) do
    file = File.read(file_name)
    IO.inspect(file)
  end

  # Second Build

  def second_build(file_name) do
    {:ok, file} = File.read(file_name)
    file
  end

  # Third Build

  def third_build(file_name) do
    case File.read(file_name) do
      {:ok, result} -> result
      {:error, reason} -> reason
    end

  # Fourth Build

  def fourth_build(file_name)
  file
  |> File.read()
  |> handle_file_read()
  end

  def handle_file({:ok, result}) do
    list = String.split(result, ",")
    Enum.map(list, fn number -> String.to_integer(number) end)
  end
  def handle_file_read({:error, reason}), do: reason

  # Five Build

  def fifth_build(file_name) do
    file
    |> File.read()
    |> handle_file()
  end

  def handle_file({:ok, result}) do
    list = String.split(result, ",") # -> ["1", "2", "3", "5"]....
    Enum.map(list, &String.to_integer/1)
  end

  def handle_file({:error, reason}), do: reason

  # Sixth Build
  # Agora vamos refatorar este código com Pipe Operator

  def sixth_place(file_name) do
    file
    |> File.read()
    |> handle_file()
  end

  def handle_file({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
  end

  def handle_file({:error, reason}), do: reason

  # Seventh Build
  # Refatorando erro

  def seventh_build(file_name) do
    file
    |> File.read()
    |> handle_file()
  end

  def handle_file({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
  end

  def handle_file({:error, reason}), do: "Error reading file: #{reason}"

  # Eigth build
  # Agora adicionaremos o Fizz para multiplos de 3, Buzz para multiplos de 5 e FizzBuzz para multiplos de 10

  def eighth_ build(file_name) do
    file_name
    |> File.read()
    |> handle_file()
  end

  def handle_file({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&convert_and_evaluate_numbers/1)
  end

  def handle_file({:error, reason}), do: "Error reading file: #{reason}"

  def convert_and_evaluate_numbers(elem) do
    number = String.to_integer(elem)
    evaluate_numbers(number)
  end

  def evaluate_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  def evaluate_numbers(number) when rem(number, 3) == 0, do: :fizz
  def evaluate_numbers(number) when rem(number, 5) == 0, do: :buzz
  def evaluate_numbers(number), do: number

  # Nineth Build
  # Privando as funções

  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&convert_and_evaluate_numbers/1)

  end

  defp handle_file({:error, reason}), do: "Error reading file: #{reason}"

  defp convert_and_evaluate_numbers(elem) do
    elem
    |> String.to_integer()
    |> evaluate_numbers()
  end

  defp evaluate_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  defp evaluate_numbers(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_numbers(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_numbers(number), do: number

  # Tenth Build
  # Controlando fluxo de resposta

  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, result}) do
    result =
      result
      |> String.split(",")
      |> Enum.map(&convert_and_evaluate_numbers/1)

    {:ok, result}
  end

  defp handle_file({:error, reason}), do: {:error, "Error reading file: #{reason}"}

  defp convert_and_evaluate_numbers(elem) do
    elem
    |> String.to_integer()
    |> evaluate_numbers()
  end

  defp evaluate_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  defp evaluate_numbers(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_numbers(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_numbers(number), do: number

end
