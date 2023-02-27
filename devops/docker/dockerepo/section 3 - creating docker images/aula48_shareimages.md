# criei uma nova versao do test-node para poder subi-lo no dockerhub
docker build -t test-node:v1 .

# criando uma tag pra essa image
docker image tag 80eece5bfe9f rodriguesz/test-node
# --> agora a imagem já está feita basta fazer o upload no docker

docker login

# agora enviando o repo
➜  test-node git:(teste) ✗ docker push rodriguesz/test-node:v1 
The push refers to repository [docker.io/rodriguesz/test-node]
d94fb377fd3f: Pushed 
3c7ff854ddd2: Pushed 
1e6853375975: Pushed 
3e53f1233c57: Pushed 
7f30cde3f699: Mounted from library/node 
fe810f5902cc: Mounted from library/node 
dfd8c046c602: Mounted from library/node 
4fc242d58285: Mounted from library/node 
v1: digest: sha256:c0119fe409ec0c16ba13461006c792972a54ba3c147235b085061f9777ade851 size: 1990

# link do repositório enviado ao docker hub
https://hub.docker.com/repository/docker/rodriguesz/test-node

# atualizando essa versao 
# editei o arquivo de texto

# buildando o v2
➜  test-node git:(teste) ✗ docker build -t test-node:v2 .
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
 ---> 8b3587839566
Step 6/7 : CMD ["node", "src/index.js"]
 ---> Running in 46a5683b8d56
Removing intermediate container 46a5683b8d56
 ---> 90e6031bd224
Step 7/7 : EXPOSE 3000
 ---> Running in 3f35db657c3c
Removing intermediate container 3f35db657c3c
 ---> af3dfdea9d3f
Successfully built af3dfdea9d3f
Successfully tagged test-node:v2
➜  test-node git:(teste) ✗ 


# renomeei o repo 
docker image tag af3dfdea9d3f rodriguesz/test-node:v2

# agora subindo o repo
docker push rodriguesz/test-node:v2
➜  test-node git:(teste) ✗ docker push rodriguesz/test-node:v2             
The push refers to repository [docker.io/rodriguesz/test-node]
b5f4438a83b2: Pushed 
3c7ff854ddd2: Layer already exists 
1e6853375975: Layer already exists 
3e53f1233c57: Layer already exists 
7f30cde3f699: Layer already exists 
fe810f5902cc: Layer already exists 
dfd8c046c602: Layer already exists 
4fc242d58285: Layer already exists 
v2: digest: sha256:d31d276894c44b46683209391448a509ca79d9494df356497d54105ede46c98a size: 1990

