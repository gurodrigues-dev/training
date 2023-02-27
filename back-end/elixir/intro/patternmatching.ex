1 = x
-> 1

2 = x
-> :error_match

x
-> 1

[x, 2, 3] = [1, 2, 3]
-> [1, 2, 3]

x
-> 1

[5, x, 8] = [5, 9, 8]
-> [5, 9, 8]

x
-> 9

# Exemplo em funções(f(x)) matemáticas.
x - 2 = 0 == -2 - 2 = 0
-> -2 - 2 = 0
x
-> -2

# Exemplo de match com map
x = [1, 2, 3]
[head | tail] = x #ou [1, 2, 3]
head
-> 1
tail
-> [2, 3]

%{a: 1, b: 2, c: 3}
->%{a: 1, b: 2, c: 3}
%{b: valor} = %{a: 1, b: 2, c: 3}
-> %{a: 1, b: 2, c: 3}
valor
-> 2

# Outro exemplo com tuplas
{:ok, "operação concluída"}
-> {:ok, "operação concluída"}

{:ok, result} = {:ok, "operação concluída"}
-> {:ok, "operação concluída"}

result
-> "operação concluída"

# Controlando fluxo com Pattern Matching
teste_function = fn
  {:ok, result} -> "O resultado foi: #{result}"
  {:error, reason} -> "Algo aconteceu, motivo: #{reason}"

teste_function.({:ok, "Sucesso"})
  -> "O resultado foi Sucesso"

# Controlando fluxo com Pattern Matching e File Read
teste_function.(File.read("teste.txt")) # Este arquivo não existe
  -> "Algo aconteceu, motivo: enoent"
