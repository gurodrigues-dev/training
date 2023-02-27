- Sempre que necessário utilizar funções já existentes. Para não criarmos 300 expressões anônimas podemos chama-las, com E-Comercial (&) e passar o argumento com a quantidade de argumentos chamados.
> Observe o exemplo abaixo, linha 8:
    ```elixir
    def fifth_build(file_name) do
        file
        |> File.read()
        |> handle_file()
    end

    def handle_file({:ok, result}) do
        list = String.split(result, ",")
        Enum.map(list, &String.to_integer/1)
    end

    def handle_file({:error, reason}), do: reason
    ```
> Nesse caso eu já citei que quero que a lista seja transformada em inteiro. Pode sim muito bem, existirem casos que: seja necessário dois argumentos. Então teriamos de passar o seguinte:
```elixir
Enum.map(list, &String.to_integer/2(float)) # Exemplo.
```

- É necessário sempre lembrar que: Quando utilizamos pattern matchings. Só podemos criar a clausula de erro ao fim. Se não o iex reclama que o método sempre irá cair na função de erro antes das outras funções.
```elixir
# Erro:
def evaluate_numbers(number), do: number
def evaluate_numbers(number) when rem(number, 3) == 0, do: :fizz
def evaluate_numbers(number) when rem(number, 5) == 0, do: :buzz
def evaluate_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
```
```elixir
# Correto
def evaluate_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
def evaluate_numbers(number) when rem(number, 3) == 0, do: :fizz
def evaluate_numbers(number) when rem(number, 5) == 0, do: :buzz
def evaluate_numbers(number), do: number
```

- Além disso, é importante citar que nem sempre a função principal utiliza todos as funções. Então sempre que a função não é a main. Podemos privar ela apenas subistituindo o ```def``` por ```defp```. 
  
- E sempre é importante retornamos um Map. Um retornando sucesso e outro erro para que o usuário da função também possa controlar o fluxo do código dele com Patter Matching.