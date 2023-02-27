# permissões de arquivos

root@96bc9f40f380:~# ls -l
total 20
-rw-r--r-- 1 root root   10 Nov 26 15:30 docker.txt
-rw-r--r-- 1 root root   50 Nov 26 15:29 file.txt
-rw-r--r-- 1 root root   25 Nov 26 15:24 gustavo.txt
-rw-r--r-- 1 root root   25 Nov 26 15:28 teste.txt
drwxr-xr-x 2 root root 4096 Nov 26 16:42 teste1


# com o ls -l notamos todos os arquivos sendo listado e no primeiro campo um campo de permissionamento, mostrnaod quem tem acesso ao arquivo. 

# este permissionamento é dividido em algumas partes

-rw-r--r--

# o primeiro caracter determina o que o arquivo é se for "-" é um diretorio, caso seja um "d" é um arquivo

# o primeiro grupo os tres caracteres pos o primeiro caracter

rw-

# read => ler
# write => escrever
# x => execute

# o segundo grupo é relacionado ao grupo

r--

# aqui então só é lhe permitido read

# o terceiro grupo

r--

# everyone todos os outros

# Como trocar as permissoes

# fazendo com que o docker.txt tenha um x de executavel

root@96bc9f40f380:~# ls -l
total 20
-rw-r--r-- 1 root root   10 Nov 26 15:30 docker.txt
-rw-r--r-- 1 root root   50 Nov 26 15:29 file.txt
-rw-r--r-- 1 root root   25 Nov 26 15:24 gustavo.txt
-rw-r--r-- 1 root root   25 Nov 26 15:28 teste.txt
drwxr-xr-x 2 root root 4096 Nov 26 16:42 teste1
root@96bc9f40f380:~# chmod u+x docker.txt 
root@96bc9f40f380:~# ls -l
total 20
-rwxr--r-- 1 root root   10 Nov 26 15:30 docker.txt
-rw-r--r-- 1 root root   50 Nov 26 15:29 file.txt
-rw-r--r-- 1 root root   25 Nov 26 15:24 gustavo.txt
-rw-r--r-- 1 root root   25 Nov 26 15:28 teste.txt
drwxr-xr-x 2 root root 4096 Nov 26 16:42 teste1


