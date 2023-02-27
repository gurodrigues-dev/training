# como ver os grupos

cat /etc/group

# qual grupo meu user pertence

root@96bc9f40f380:~# groups gustavo
gustavo : gustavo

# criando um grupo com group

groupadd
groupmod
groupdel

# adicionando group docker

groupadd docker

docker:x:1001:

# adicionando meu user neste grupo
root@96bc9f40f380:~# usermod -G docker gustavo
root@96bc9f40f380:~# groups gustavo     
gustavo : gustavo docker


