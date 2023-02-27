# nesta aula ao inves de baixarmos a imagem localmente e usarmos a máquina de container, faremos o seguinte => baixaremos um sistema de forma interativa "-it" e usaremos esse ambiente pra testes

docker run -it ubuntu

# => retorno

Unable to find image 'ubuntu:latest' locally
latest: Pulling from library/ubuntu
e96e057aae67: Pull complete 
Digest: sha256:4b1d0c4a2d2aaf63b37111f34eb9fa89fa1bf53dd6e4ca954d47caebca4005c2
Status: Downloaded newer image for ubuntu:latest

root@96bc9f40f380:/#

#verificando o usuário

whoami

# printando no terminal

echo hi

# verificando onde estou

pwd or echo $0
bash

# visualizando histórico
history


