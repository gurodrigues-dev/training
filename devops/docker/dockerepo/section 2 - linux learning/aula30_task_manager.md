# visualizando processos

ps

    PID TTY          TIME CMD
      1 pts/0    00:00:00 bash
    542 pts/0    00:00:00 ps

# sleep no terminal 

sleep 5 # assim o terminal fica 5 segundos sem responder

# mas podemos tambem rodar um sleep em segundo plano, por background e assim verificar o processo

sleep 5 &

root@96bc9f40f380:~# sleep 5 &
[1] 545
root@96bc9f40f380:~# ps
    PID TTY          TIME CMD
      1 pts/0    00:00:00 bash
    545 pts/0    00:00:00 sleep
    546 pts/0    00:00:00 ps

# pos 5 segundos

root@96bc9f40f380:~# ps
    PID TTY          TIME CMD
      1 pts/0    00:00:00 bash
    547 pts/0    00:00:00 ps
[1]+  Done                    sleep 5


# matando processo que esta matando
# matando um sleep

root@96bc9f40f380:~# sleep 502 &
[1] 548
root@96bc9f40f380:~# ps
    PID TTY          TIME CMD
      1 pts/0    00:00:00 bash
    548 pts/0    00:00:00 sleep
    549 pts/0    00:00:00 ps
root@96bc9f40f380:~# kill 548

