# Estrutura de Dados

-> O redis aceita os seguintes tipos de dados

- Strings
- Hashs
- Sets
- Lists

-> Abordando Strings
- Inserção de Dados
```redis
SET chave valor
GET chave
```
> Lembrando que: As chaves são como Ids, não podem se repetir são ela que caracterizam um endereço ao valor e o valor pode se repetir a vontade
```redis
SET 1 "Engenharia de Dados

GET 1

-- R: Engenharia de Dados
```

- Inserção de conjuntos chave/valor
> Ao invés de usar SET, usaremos MSET
```redis
MSET 1040 ANALISTA 1050 GERENTE 1060 QA
OK
```

- Verificando se uma chave existe
```redis
EXISTS 1

-- R: (integer) 1
```

- Deletando dados
```redis
DEL 1
```

- Verificando tipo de dados
```redis
TYPE 1
-- R: string
```

- As chaves no Banco podem expirar, como configuramos esse tempo de expired
```redis
SET 1 "ENGENHARIA DE SOFTWARE" EX 60 NX"
```
> Mas o que é EX e NX?
- EX: Segundos
- PX: Milisegundos
- NX: Só funciona se não existe
- XX: Só funciona se existe

> Posso também definir esse tempo de expired após criar um chave:
- Exemplo com Segundos
```redis
SET 1 "Engenharia de Requisitos"
EXPIRE 1 60
```

- Exemplo com Milisegundos:
```redis
SET 1 "Engenharia de Dados"
PEXPIRE 1 60
```

- Podemos também verificar o Tempo de Vida de uma chave (TTL) da seguinte maneira:
```redis
SET 10 "ENGENHARIA DA COMPUTAÇÃO" EX 60 NX

PTTL 10
-- R: (integer) 34416

TTL 10
-- R: (integer) 9
```
> PTTL -> Milisegundos
> TTL -> Segundos

- Posso também remover o tempo de expired, para que assim ele não expire mais
```redis
PERSIST 10
```

- GetRange

```redis
SET 5 "Gustavo Rodrigues" 

GET 5 0 6
-- R: "Gustavo"
```

- Retornando Valor de Várias Chaves

```redis
MGET 1020 1030

-- R: "ENGENHEIRO DE DADOS"
-- R: "CIENTISTA"
```

- Atualizar valor
```redis
GETSET 1030 "CIENTISTA DE DADOS"
```

- Verificando tamanho do valor
```redis
STRLEN 1020

-- R: (integer) 19
```


