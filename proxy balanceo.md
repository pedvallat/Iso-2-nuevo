Proxy Nginx y balanceo escalado con Docker Compose

Crear la estructura de directorios:

Desde tu HOME o donde quieras trabajar:

mkdir proxy-nginx-compose

cd proxy-nginx-compose

Creamos los directorios necesarios:

mkdir apache nginxproxy

Quedará así:

proxy-nginx-compose/

├── apache/

└── nginxproxy/

Crear los ficheros del servicio Apache:

Crear Dockerfile:

nano apache/Dockerfile

Contenido:

FROM php:7.2-apache

COPY index.php /var/www/html/

Crear index.php:

nano apache/index.php

Crear configuración de Nginx (proxy):

nano nginxproxy/nginx.conf

Contenido:

<img width="480" height="201" alt="Screenshot_20260130_115738" src="https://github.com/user-attachments/assets/991b8ca9-53ab-4070-8171-7de6e13c27b9" />

user nginx;

events { worker_connections 1000; }

http { server { listen 4000;

    location / {
        proxy_pass http://apache:80;
    }
}

}

Nginx escucha en 4000

Reenvía las peticiones al servicio apache

Docker Compose se encarga del balanceo automáticamente

Crear docker-compose.yml:

En el directorio raíz:

nano docker-compose.yml

Contenido:

version: "3.9"

services:

apache:

build: ./apache

restart: always

ports:

  - "80"

nginxproxy:

image: nginx:latest

volumes:

  - ./nginxproxy/nginx.conf:/etc/nginx/nginx.conf:ro
  
depends_on:

  - apache
  
ports:

  - "4000:4000"

Levantar el sistema

Desde el directorio donde está el docker-compose.yml:

docker compose up -d

Qué hace:

Construye la imagen Apache

Descarga Nginx

Arranca los contenedores en segundo plano

Comprueba que están activos:

docker compose ps

Probar funcionamiento:

En el navegador: http://localhost:4000

Verás algo como:

Servido por: Servidor con IP 172.x.x.x

Hostname xxxxxxxxxxxx

Si recargas, verás siempre el mismo, porque solo hay 1 Apache.

Escalar Apache (balanceo de carga):

Ahora escalamos a 4 servidores Apache:

docker compose up -d --scale apache=4

Comprueba:

docker compose ps

Deberías ver:

4 contenedores Apache

1 Nginx

Comprobar el balanceo:

Recarga varias veces:

http://localhost:4000

Verás que cambian:

IP

Hostname

Eso significa que Nginx + Docker Compose están balanceando en round-robin automáticamente
