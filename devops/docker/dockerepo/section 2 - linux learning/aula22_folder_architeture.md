# arquitetura de pastas noi linux

/bin # => comandos binários para ser utilizado por todos os usuários, como ls, cat

/sbin # => arquivos binários do sistema, binários do sistema operacional

/dev # => arquivos de device, teclado, mouse, hd

/etc # => extend tool changes, arquivos pertencentes ao host, arquivos de configuração

/proc # => informações de processos, arquivos de processos, e arquivos de comunicação do hardware, informações de memória, processador, etc

/var # => variables files, diretório de logs, ou tudo q nao se encaixa nos outros diretórios

/tmp # => arquivos temporários, ele tem um sistema de auditoria que verifica se os arquivos estao sendo usados ou nao, se nao, ele os exclui

/usr # => user programs

/home # => home directories, onde ficam os usuários do sistema

/boot # => boot loader files

/lib # => system libraries
/lib64 # => programas importados, para uso de outros programas

/opt # => optional add-on Apps, colocar pacotes separados que nao estao sendo utilizados pelo proprio so

/media # => removable devices, configurações de montagem por exemplo de um pendrive

/mnt # => igual o media, mas ele monta apenas coisas temporárias

/srv # => service datas

root # => home do usuário representado por "/"

/run # => arquivos temporarios que estão em execução 

# Verificando onde os arquivos estão

which ls
/bin/ls
