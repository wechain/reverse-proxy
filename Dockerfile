FROM alpine:latest
LABEL Author="Charles Stover"

# Maintenance
RUN apk update
RUN apk upgrade

# Dependencies
RUN apk add certbot libressl nginx
RUN rm -rf /etc/nginx/conf.d/*

# Copy
COPY etc/letsencrypt/cli.ini /etc/letsencrypt/cli.ini
COPY etc/nginx/conf.d /etc/nginx/conf.d
COPY etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY etc/periodic/daily/certbot.sh /etc/periodic/daily/certbot.sh

# Install
RUN chmod +x /etc/periodic/daily/certbot.sh
RUN openssl dhparam -dsaparam -out /etc/nginx/dhparam.pem 4096

ENTRYPOINT [ "nginx && certbot certonly --domains acealters.com && certbot certonly --domains charlesstover.com && certbot certonly --domains cscdn.net && certbot certonly --domains gamingmedley.com && certbot certonly --domains mtgeni.us && certbot certonly --domains mtgenius.com && certbot certonly --domains quisido.com" ]

EXPOSE 80 443
