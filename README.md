# reverse-proxy
A reverse proxy for the suite of applications by Charles Stover.

## Build
Run `yarn build`.

## Tech Stack

* Alpine Linux - The operating system running in the container.

* Certbot - Let's Encrypt is used to dynamically generate TLS certificates for each domain behind the reverse proxy.

* Docker - The entire application is built into a Docker image to be deployed to the host server.

* Docker Hub - The build is automated by and pulled from Docker Hub.

* nginx - The reverse proxy itself is powered by nginx.

* yarn - Simply used as a shortcut for scripts.
