FROM alpine:latest
LABEL Author="Charles Stover"

# nginx
RUN apk update
RUN apk add nginx
RUN rm -rf /etc/nginx/conf.d
COPY etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY etc/nginx/servers.conf /etc/nginx/servers.conf

# certbot
# WORKDIR /opt/certbot
# RUN wget https://dl.eff.org/certbot-auto
# RUN chmod a+x certbot-auto
# RUN certbot-auto --email charlesstover@charlesstover.com --nginx --server https://acme-v02.api.letsencrypt.org/directory

ENTRYPOINT [ "nginx" ]

EXPOSE 80 443
