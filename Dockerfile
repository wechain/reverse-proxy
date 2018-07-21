FROM alpine:latest
LABEL Author="Charles Stover"
VOLUME /etc/letsencrypt /etc/letsencrypt
VOLUME /var/lib/letsencrypt /var/lib/letsencrypt

# nginx
WORKDIR /opt/nginx
RUN apt-get update
RUN apt-get install nginx
RUN rm -rf /etc/nginx/conf.d
RUN rm -rf /usr/share/nginx/html/*
COPY nginx.conf /etc/nginx/nginx.conf

# certbot
WORKDIR /opt/certbot
RUN wget https://dl.eff.org/certbot-auto
RUN chmod a+x certbot-auto
# RUN certbot-auto --email charlesstover@charlesstover.com --nginx --server https://acme-v02.api.letsencrypt.org/directory

EXPOSE 80 443
