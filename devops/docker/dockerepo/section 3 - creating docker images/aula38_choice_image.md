# escolhendo a imagem, vamos rodar um node em um alpine 12, posteriormente buildar e entrar somente no os da imagem

# dentro do Dockerfile

FROM node:12-alpine

# rodando agora

docker build -t teste .

# -t => dando nome pra imagem

# verificando se ha node dentro da maquina

# entrando na maquina

docker run -it teste sh

node --version

/ $ node --version
v12.22.12


