# sempre que uma nova imagem com mesmo nome for criada, ela será sobreposta pela nova com mesmo nome

# criando tag
➜  test-node git:(teste) ✗ docker build -t test-node:v1.0.0 .
Sending build context to Docker daemon  7.168kB
Step 1/7 : FROM node:12-alpine
 ---> bb6d28039b8c
Step 2/7 : WORKDIR /app
 ---> Using cache
 ---> 46434b0a8102
Step 3/7 : COPY package.json .
 ---> Using cache
 ---> 2d0760201142
Step 4/7 : RUN apk add --no-cache python2 g++ make
 ---> Using cache
 ---> c0d86bd2f695
Step 5/7 : COPY . .
 ---> Using cache
 ---> a7585bb30f85
Step 6/7 : CMD ["node", "src/index.js"]
 ---> Using cache
 ---> 3604254e7be5
Step 7/7 : EXPOSE 3000
 ---> Using cache
 ---> f9962b9e78d3
Successfully built f9962b9e78d3
Successfully tagged test-node:v1.0.0


# verificando como ficaram as versões
➜  test-node git:(teste) ✗ docker images
REPOSITORY    TAG             IMAGE ID       CREATED          SIZE
test-node     latest          f9962b9e78d3   7 minutes ago    314MB
test-node     v1.0.0          f9962b9e78d3   7 minutes ago    314MB

# removendo nova imagem criada
docker image remove test-node:v1.0.0 

# tageando imagem ja criada
# --> docker image tag <imagem: versão> <imagem: nova versão>
docker image tag app:latest app:v1.0.0

# agora adicionei mudanças ao arquivo readme para poder construi-lo de uma forma diferente
➜  test-node git:(teste) ✗ docker build -t test-node:v1.0.1 .
Sending build context to Docker daemon  7.168kB
Step 1/7 : FROM node:12-alpine
 ---> bb6d28039b8c
Step 2/7 : WORKDIR /app
 ---> Using cache
 ---> 46434b0a8102
Step 3/7 : COPY package.json .
 ---> Using cache
 ---> 2d0760201142
Step 4/7 : RUN apk add --no-cache python2 g++ make
 ---> Using cache
 ---> c0d86bd2f695
Step 5/7 : COPY . .
 ---> a7cee478ef53
Step 6/7 : CMD ["node", "src/index.js"]
 ---> Running in dddb55687671
Removing intermediate container dddb55687671
 ---> 262076c0dcb1
Step 7/7 : EXPOSE 3000
 ---> Running in 0158f33c4b8a
Removing intermediate container 0158f33c4b8a
 ---> 80eece5bfe9f
Successfully built 80eece5bfe9f
Successfully tagged test-node:v1.0.1

REPOSITORY    TAG             IMAGE ID       CREATED          SIZE
test-node     v1.0.1          80eece5bfe9f   33 seconds ago   314MB
test-node     latest          f9962b9e78d3   14 minutes ago   314MB
test-node     v1.0.0          f9962b9e78d3   14 minutes ago   314MB

