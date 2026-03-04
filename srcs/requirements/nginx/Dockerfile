FROM debian:bookworm

RUN cat nginx.conf

EXPOSE 443

CMD ["bash", "-c", "tail -f /dev/null"]
#CMD ["/usr/sbin/nginx", "-g", "daemon off;"]