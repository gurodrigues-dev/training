# Criação como atoms
x = %{a: 1, b: 2}
x[:a]
-> 1
x[:b]
-> 2

# Criação como strings
y = %{"a" => 1, "b" => 2}
y["a"]
-> 1
y["b"]
-> 2

# Notação de pontos só funcionam com atoms.
x.a
-> 1
x.b
-> 2

# A notação de Strings, não é vantajosa, mas é bem utilizada com o Phoenix.

x = %{idade: 18, nome: "Gustavo"}
x.idade
-> 18
x.nome
-> "Gustavo"

# Eu posso também atualizar um map
x = %{nome: "Gustavo"}

# Agora preciso adicionar a idade
x = %{x | idade: 29}
-> %{idade: 29, nome: "Gustavo"}

# Mas assim como as listas temos diversas funções sendo usadas. Então vamos adicionar a este map, uma cor.
x = Map.put(x, :cor, :azul)
x
-> %{cor: azul, idade: 29, nome: "Gustavo"}
