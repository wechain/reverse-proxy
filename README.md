# reverse-proxy
A reverse proxy for the suite of applications by Charles Stover.

## Tech Stack

* Certbot - Let's Encrypt is used to dynamically generate TLS certificates for each domain behind the reverse proxy.

* Docker - The entire application is built into a Docker image to be deployed to the host server.

* nginx - The reverse proxy itself is powered by nginx.
