Nginx Dockerfile
================

This repository contains **Dockerfile** of [Nginx][] for [Docker][]’s
[automated build][] published to the public [Docker Hub Registry][].

Base Docker Image
-----------------

-   [Official Fedora 21 image][]

Installation
------------

1.  Install [Docker][].
2.  Download [automated build][] from public [Docker Hub Registry][]:
    docker pull nott/nginx

Usage
-----

    docker run -d -p 80:80 nott/nginx

Attach volumes
--------------

    docker run -d -p 80:80 -v {conf-d-dir}:/etc/nginx/conf.d -v {default-d-dir}:/etc/nginx/default.d -v {log-dir}:/var/log/nginx -v {html-dir}:/usr/share/nginx/html nott/nginx

After few seconds, open http://{host} to see the welcome page.

  [Nginx]: http://nginx.org/
  [Docker]: https://www.docker.com/
  [automated build]: https://registry.hub.docker.com/u/nott/nginx/
  [Docker Hub Registry]: https://registry.hub.docker.com/
  [Official Fedora 21 image]: https://github.com/fedora-cloud/docker-brew-fedora/

