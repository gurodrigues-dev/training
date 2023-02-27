# => ambiente:sistema operacional
FROM node:alpine

# => copie tudo que há neste repositório na pasta abaixo
COPY . /app

# => rode o meu programa (no caso seria um node) com o seguinte comando
CMD node app.js
# => rodando a aplicação app.js, mas vale ressaltar que: o app js nao esta na home do /app entao teriamos que acessar a pasta "/app", então comando seria o seguinte:

CMD node /app/app.js

# => entretanto, podemos fazer da seguinte maneira, mantendo um arquivo como "home" por default, trabalhando sempre no seguinte diretório

WORKDIR /app

# assim então não precisamos mais passar o diretório, voltando ao comando inicial "CMD node app.js"

# Arquivo final em: "Dockerfile"

# => Executando no terminal. Construindo a imagem

docker build -t hi-docker .

# docker build => constro a imagem
# -t : tag de identificação (o nome dele)
# "." construa a partir do dockerfile

# retorno abaixo

Sending build context to Docker daemon  3.584kB
Step 1/4 : FROM node:alpine
alpine: Pulling from library/node
ca7dd9ec2225: Pull complete 
4487691952c0: Pull complete 
206c50ffab46: Pull complete 
f6d4361cf153: Pull complete 
Digest: sha256:c59fb39150e4a7ae14dfd42d3f9874398c7941784b73049c2d274115f00d36c8
Status: Downloaded newer image for node:alpine
 ---> 41b5b4b810c1
Step 2/4 : COPY . /app
 ---> 28efccf53e71
Step 3/4 : WORKDIR /app
 ---> Running in 62f243ad2423
Removing intermediate container 62f243ad2423
 ---> 6a8fbf8c17b1
Step 4/4 : CMD node app.js
 ---> Running in 3f8763cc0e90
Removing intermediate container 3f8763cc0e90
 ---> fd6425828c44
Successfully built fd6425828c44
Successfully tagged hi-docker:latest

# testando a image
# => retornou sucesso

hi-docker     latest    fd6425828c44   4 minutes ago   168MB

# rodando imagem dentro de um container
docker run hi-docker

# retorno
Hi DOcker

# aula finalizada
