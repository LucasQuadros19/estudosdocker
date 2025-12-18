FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y nginx && \
    rm -rf /var/lib/apt/lists/*

COPY nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
