# Criando tuplas no elixir
x = {1, 2, 3, 4}
first_element = elem(x, 0)
second_element = elem(x, 1)

# Criei um arquivo de texto. Agora vou ler ele e o resultado gerado ficará guardado dentro de uma tupla. Vale a pena ressaltar que o arquivo está vazio.
file = File.read("teste.txt")
-> {:ok, ""}

# Agora farei um teste com um arquivo que não existe
file = File.read("rodrigues.txt")
-> {:error, :enoent}

# Existem funções com exclamção chamadas de bang, essas funções servem para provocar o erro. No exemplo acima o erro não é causado é apenas uma exceção. Agora se utilizassemos o bang o código quebraria e um erro seria apresentado.

file = File.read!("rodrigues.txt")
-> :error

# Posso também ter uma tupla de valores variados
x = {1, :atom, 2, 3, 4}
