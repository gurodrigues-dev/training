# Suponha que eu tenha a seguinte string
x = "   GustavO   "

# Eu quero retirar os espaços e deixar tudo em minusculo, existem 3 formas de fazer isso. Uma nada elegante, outra tambem não e uma utilizando composição de funções.

# Método 1
x = String.trim(x) # retirando os espaços
x = String.downcase(x) # retirando as maiusculas

# Método 2
x = String.trim(String.downcase(x))

# Método 3
x |> String.trim() |> String.downcase()
-> gustavo

# É similar a usar várias funções via terminal no linux. Por exemplo:
ps aux | grep "chrome"

# Porém com "|>"
