defmodule FizzBuzzProdTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, a list is returned" do
      expected_response = {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}

      assert FizzBuzzProd.build("numbers.txt") == expected_response
    end

    test "when an invalid file is inserted, an error is returned" do
      expected_response = {:error, "Error reading file: enoent"}

      assert FizzBuzzProd.build("invalid.txt") == expected_response
    end
  end
end
