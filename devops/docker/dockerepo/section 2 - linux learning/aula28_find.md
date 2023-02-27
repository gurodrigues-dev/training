# imagine que dentro dos arquivos queiramos encontrar algo. dai então a palavra 'find' => encontrar

find
.
./docker.txt
./teste.txt
./gustavo.txt
./file.txt

# podemos encontrar arquivos de pastas buscando entender o que ha dentro deles

find /etc/hosts

# por exemplo

# puxando apenas arquivos

find -type f

# puxando arquivos apenas, podemos também usar d para diretório

find -type d

# procurando apenas pelo arquivo docker

find -type f -name "docker.txt"

# nosso retorno => 

