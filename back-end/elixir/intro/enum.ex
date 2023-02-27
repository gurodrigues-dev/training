# Utilizando enum para ordenar
Enum.sort([1, 5, 2, 6, 4]
-> [1, 2, 4, 5, 6]

# Utilizando enum para ordenar de forma decrescente
Enum.sort([1, 5, 2, 6, 4], :desc)
-> [6, 5, 4, 2, 1

# Para iterar sobre uma lista, é necessário utilizar funções anônimas. Como espécie de for.
Enum.map([1, 2, 3, 4], fn elem -> elem + 1 end)
-> [2, 3, 4, 5]

# Utilizando reduce
Enum.reduce([1, 2, 3, 4], 0, fn x, acc -> x + acc)
-> 10

Enum.reduce(%{a: 1, b: 2}, %{}, fn {k, v}, acc -> Map.put(acc, k, v + 1) end)
-> %{a: 2, b: 3}

Enum.reduce(%{a: 1, b: 2}, %{}, fn {k, v}, acc -> Map.put(acc, k, v + v) end)
-> %{a: 2, b: 4}
