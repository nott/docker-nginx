Nginx Dockerfile
****************

This repository contains **Dockerfile** of `Nginx <http://nginx.org/>`_ for `Docker <https://www.docker.com/>`_'s `automated build <https://registry.hub.docker.com/u/nott/docker-nginx/>`_ published to the public `Docker Hub Registry <https://registry.hub.docker.com/>`_.


Base Docker Image
-----------------

* `Official Fedora 21 image <https://github.com/fedora-cloud/docker-brew-fedora/>`_


Installation
------------

1. Install `Docker <https://www.docker.com/>`_.

2. Download `automated build <https://registry.hub.docker.com/u/nott/docker-nginx/>`_ from public `Docker Hub Registry <https://registry.hub.docker.com/>`_: `docker pull nott/docker-nginx`

Usage
-----

::
   
    docker run -d -p 80:80 nott/docker-nginx

Attach volumes
--------------

::
   
    docker run -d -p 80:80 -v {conf-d-dir}:/etc/nginx/conf.d -v {default-d-dir}:/etc/nginx/default.d -v {log-dir}:/var/log/nginx -v {html-dir}:/usr/share/nginx/html nott/docker-nginx

After few seconds, open `http://{host}` to see the welcome page.
