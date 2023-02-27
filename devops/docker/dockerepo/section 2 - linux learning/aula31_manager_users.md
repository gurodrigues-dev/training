# verificando onde estou 

root@96bc9f40f380:~# whoami
root

# adicionando user

useradd -m gustavo

# alterando user

usermod

# apagando 

userdel

# verificando a senha desse user de forma criptografada

gustavo:x:1000:1000::/home/gustavo:/bin/sh

# abrindo outro terminal entao para tentar entrar com ele
# para entrar precisariamos entao passar o user como flag, mas pra isso precisamos saber o id do container

docker ps

or

rodrigues@rodrigues-ubuntu:~/Desktop/impacta/devops/docker/dockerepo/section 2 - linux learning$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED       STATUS       PORTS     NAMES
96bc9f40f380   ubuntu    "bash"    2 hours ago   Up 2 hours             stupefied_shtern

# agora entao pra logar com o usuario 

rodrigues@rodrigues-ubuntu:~/Desktop/impacta/devops/docker/dockerepo/section 2 - linux learning$ docker exec -it -u gustavo 96bc9f40f380 bash
gustavo@96bc9f40f380:/$ 

docker exec -it -u user id_container command

# -it => interativo # -u => user # user => usuario criado # id_container => id do container # command => coluna de command puxado com docker ps

gustavo@96bc9f40f380:/$ cat /etc/shadow
cat: /etc/shadow: Permission denied

# usuario acima nao tem permissao root
