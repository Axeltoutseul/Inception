FROM debian:bookworm

RUN cat ../../docker-compose.yml

EXPOSE 443

COPY source dest

ENTRYPOINT [ "executable" ]