FROM debian:bookworm

RUN apt-get update && \
    apt-get upgrade && \
    apt-get install -y mariadb-server

RUN mkdir -p /run/mysqld && \
    chown -R mysql:mysql /var/lib/mysql && \
    chown -R mysql:mysql /run/mysqld

COPY database.sh /docker-entrypoint.sh

COPY conf/mysql.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
