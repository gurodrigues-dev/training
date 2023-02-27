> Sempre que você ler os códigos. Notará que há um exagero na chamada de "->" elas denominam o resultado do terminal.

- Diferenças de outras linguagens. 
    - Assim como no Ruby, onde há os symbols no Elixir utilizamos os atoms. Que é como se fosse uma string constante. nomeada por
    ```elixir
    :banana
    :elixir
    ```
    - Podemos utilizar as funções dele, além dessas existem outras diversas.:
    ```elixir
    is_integer(1)
    true

    is_integer(1.0)
    false
    ```

    - Nulo do Elixir
    ```elixir
    nil
    ```

    - Para consultar uma documentação de função de forma mais rápida:
    ```elixir
    h is_atom/1

    > Retorno da documentação
    ```

    - Sempre que você tenta utilizar autocomplete. Você que para cada função há ou "/1" ou "/2".
    > Chamamos isso de aridade da função, que nada mais é, a quantidade de argumentos que esta função deve receber. 

- Perante a imutabilidade é interessante lembrar que, mesmo que o valor se altere dentro de uma função ele permanece com o mesmo valor de memória, como ponteiro, por exemplo.
    ```elixir
    x = "Gustavo"
    String.downcase(x)
    -> gustavo

    x
    -> Gustavo

    # Para mudar o valor é necessário o reatribuir
    x = String.downcase("Gustavo)

    x
    -> gustavo
    ```
    > Entretanto no exemplo acima as versões anteriores do X ainda existem. Porém em instâncias diferentes e diferentes endereços de memória. 

- Listas
    - Diferentes de outras linguagens as listas em Elixir, possuem tempo linear ao seu tamanho. Não podemos chamar uma posicão de uma vez, como em Python, por exemplo:
    ```python
    list = [1, 2, 3, 4]
    list[2]
    -> 3
    ```
    > Isso não existe em elixir, precisamos percorrer a lista totalmente até encontrar o dado desejado.

    - Quando eu atribuo um novo número a uma lista é mais simples do que em outras linguagens em questão de computação
    Por exemplo, quando adiciono um novo número a uma lista já existente. Na verdade é só crio uma lista com o valor do novo número apontando para antiga a lista.
    ```elixir
    x = [1, 2, 3, 4]
    x = [99 | x]
    -> [99, 1, 2, 3, 4]

    # Na verdade eu criei uma nova lista que aponta para X
    [99] -> x

    # Que por sua vez dentro da mesma lista um aponta para o outro então na verdade

    # 1 aponta 2 que aponta 3 que aponta 4
    [1] -> [2] -> [3] -> [4]

    # Então para adicionar um novo ao fim. Teria que percorrer a lista toda para adicionar um valor no fim e fazer o 4 apontar para este novo valor
    ```
    > Para verificar mais pontos, entre no código de elixir que explicita exemplos de outros pontos "listas.ex"

- Tuplas
  - As tuplas estão em endereços contigos de memória. 
    ```elixir
    x = {1, 2, 3, 4}
    ```

    - Qual a diferença
    > Listas são usadas para coleções, como coleções de structs, maps de usuários.

    > Tuplas servem para retorno de função.

- Keyword Lists
  - A criação de Tuplas dentro de listas, serve para dar opção as funções
    ```elixir
    x = [{a: "valor1"}, {b: "valor2"}]
    ```

- Maps 
  - Criando Maps:
  ```elixir
  x = %{a: "valor1", b: "valor2"}
  ```
    - É interessante lembrar que os atoms tem limite, então caso algum malware malicioso seja injetado na memória ele pode criar milhões de atoms e estourar a memória de um servidor, por exemplo. Por isso o Phoenix faz uso da criação de maps com strings, evitando esse problema. 

- Enum
  - Dentro do elixir não temos nem for e nem while (recursão), utilizamos a função chamada de Enum.
    > Então como podemos percorrer a recursão? 
    - Observe os exemplos de ```Enum.reduce``` no código.

- Pattern Matchings
  - o "=" em elixir não é um operador de atribuição como em outras linguagens. E sim um operador de match.
  - Imagine que estamos novamente na escola, com a seguinte função:
  ```
  x - 2 = 0
  ``` 
  > Para que ela seja verdade é necessário que o x seja -2, então basicamente seria necessário um match com -2

  > Supondo outro cenário então, imagine que: temos duas listas, uma que recebe a atribuição e a outra que é a própria atribuição
  ```elixir
  [x, 2, 3] = [1, 2, 3]
  -> [1, 2, 3]
  ```
  > O x automaticante se tornou o 1, para dar match com a lista de atribuição.
  - É sempre necessário utilizar a chave, para determinar o fluxo de execução corretamente. 

  > Observe um exemplo com matchs em funções
  ```elixir
  teste_function = fn
  {:ok, result} -> "O resultado foi: #{result}"
  {:error, reason} -> "Algo aconteceu, motivo: #{reason}"

  teste_function.({:ok, "Sucesso"})
  -> "O resultado foi Sucesso"
  ```


