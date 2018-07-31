FROM alpine:latest
LABEL Author="Charles Stover"

# Dependencies
RUN apk update
RUN apk upgrade
RUN apk add certbot libressl nginx
VOLUME /etc/letsencrypt /etc/nginx/conf.d /etc/openssl

# Copy
COPY src/etc/letsencrypt/cli.ini /etc/letsencrypt/cli.ini
COPY src/etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY src/home/crontab.txt /home/crontab.txt
COPY src/home/entrypoint.sh /home/entrypoint.sh

# Install
RUN /usr/bin/crontab /home/crontab.txt

# Clean Up
RUN rm -rf /home/crontab.txt

# Run
ENTRYPOINT [ "/bin/bash", "/home/entrypoint.sh" ]

EXPOSE 80 443
