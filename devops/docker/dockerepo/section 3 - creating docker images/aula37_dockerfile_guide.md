# comandos docker

FROM # imagem, linux, ubuntu, alpine
# FROM plataforma:os

WORKDIR # definindo pasta de trabalho/

COPY / ADD # copiando arquivos de pasta x, para poder rodar

RUN # arquivos que vão fazer rodar o process

ENV # configurações do ambiente

EXPOSE # define a porta

USER # usuario que ira rodar a aplicação
 
CMD # comandos para serem excutado no terminal ou para rodar

ENTRYPOINT # cmd
