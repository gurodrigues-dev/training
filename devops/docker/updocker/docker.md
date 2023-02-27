# iniciando docker junto do sistema
sudo systemctl enable --now docker docker.socket contain

# comandos de ajuda
docker --help

# instalando wordpress e ubuntu
docker pull wordpress
docker pull ubuntu

# vendo imagens do docker
docker images

# subindo container c/ wordpress
docker run --name my_wordpress -p 8080:80 -d wordpress
docker run --name my_nginx -p 4343:443

# verificando serviços rodando
docker ps 

# verificando serviços rodando e status
docker ps -a 

# parando container
docker stop <id>

# startando container
docker start <id>

# removendo container
docker rm <id>

# apagando imagem
docker rmi <nome_da_imagem>


