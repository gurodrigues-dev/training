-> Criando uma bridge.
```bash
$ docker network create --driver bridge minha-bridge
```

-> Adicionando um container a esta bridge
```bash
$ docker run -it --name ubuntu1 --network minha-bridge ubuntu bash 
```

#### **Verificando se o container está de fato na bridge.**

-> Listando redes
```bash
$ docker network ls 
```

-> Listando processos
```bash
$ docker ps
```

-> Verificando configurações do container
```bash
$ docker inspect
```

#### **Tentando pingar outro container**

Para isso vamos criar um container sem nada com um sleep de um dia só para se manter em execução.

-> Criando container
```bash
$ docker run -d --name pong --network minha-bridge ubuntu sleep 1d
```

-> Pingando contianer
```bash
$ ping ping pong
PING pong (172.20.0.3) 56(84) bytes of data.
64 bytes from pong.minha-bridge (172.20.0.3): icmp_seq=1 ttl=64 time=0.071 ms
64 bytes from pong.minha-bridge (172.20.0.3): icmp_seq=2 ttl=64 time=0.031 ms
64 bytes from pong.minha-bridge (172.20.0.3): icmp_seq=3 ttl=64 time=0.029 ms
64 bytes from pong.minha-bridge (172.20.0.3): icmp_seq=4 ttl=64 time=0.032 ms
64 bytes from pong.minha-bridge (172.20.0.3): icmp_seq=5 ttl=64 time=0.032 ms
64 bytes from pong.minha-bridge (172.20.0.3): icmp_seq=6 ttl=64 time=0.029 ms
64 bytes from pong.minha-bridge (172.20.0.3): icmp_seq=7 ttl=64 time=0.038 ms
64 bytes from pong.minha-bridge (172.20.0.3): icmp_seq=8 ttl=64 time=0.029 ms
```

A principal diferenças destes é que você consegue fazer uma rota de DNS entre containers através de hostnames.