# criando, entrando e printando ao mesmo tempo

mkdir teste1 ; cd teste1 ; echo ok

# entretanto o comando acima se um deles der erro, os outros continuam, mas nao é isso que queremos, queremos de forma sequencial

mkdir teste2 && teste && echo ok
