FROM alpine:latest
LABEL Author="Charles Stover"

# Dependencies
RUN apk update
RUN apk upgrade
RUN apk add certbot libressl nginx
VOLUME /etc/letsencrypt /etc/nginx/conf.d /etc/openssl

# Copy
COPY src/crontab.txt ./crontab.txt
COPY src/entrypoint.sh ./entrypoint.sh
COPY src/etc/letsencrypt/cli.ini /etc/letsencrypt/cli.ini
COPY src/etc/nginx/nginx.conf /etc/nginx/nginx.conf

# Install
RUN /usr/bin/crontab crontab.txt

# Clean Up
RUN rm -rf crontab.txt

# Run
ENTRYPOINT [ "./entrypoint.sh" ]

EXPOSE 80 443
