X = [1, 2, 3, 4]

# Acrescentando ao inicio da lista
x = [99 | x]

# Pegando o primeiro item da lista
# o hd significa head de cabeça ou seja a cabeça da lista.
hd x

# Verificando o restante fora o primeiro item
tl x

# Posso concatenar as listas
[1, 2] ++ [3, 4]

# Posso retirar itens de uma lista, por exemplo
[1, 2, 3, 4] -- [3, 4]
-> [1, 2]

first = List.first(x)
-> first == 99

last = List.last(x)
-> last == 4

# Inserindo em uma posição específica da lista
# > Inserindo na posição 2, o elemento 0
List.insert_at([1, 2, 3, 4], 2, 0)
x = List.insert_at([x], 2, 0)
-> x == [1, 2, 0, 3, 4]

# Uma lista pode conter diversos elementos
list = [1, 1.15, "gustavo", :ok]
