FROM openjdk

RUN mkdir -p /app/aula

ENV APP_NAME=produtos.jar

COPY ${APP_NAME} /app/aula

EXPOSE 8081

ENTRYPOINT [ "java", "-jar", "/app/aula/produtos.jar" ]

