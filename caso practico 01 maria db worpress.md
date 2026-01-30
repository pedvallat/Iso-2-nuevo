WORPRESS + MARIADB
Instalar Docker:
sudo apt update
sudo apt install docker.io -y

Activamos y arrancamos el servicio:
sudo systemctl enable docker
sudo systemctl start docker

Comprobamos que funciona:
docker --version

Instalar Docker Compose (plugin oficial):
sudo apt install docker-compose-plugin -y

Verificamos:
docker compose version

Crear carpeta del proyecto:
mkdir wordpress-docker
cd wordpress-docker

Crear el archivo docker-compose.yml:
nano docker-compose.yml


Pega TODO este contenido dentro:

version: "3.9"

services:
  db:
    image: mariadb:10.11
    volumes:
      - db_data:/var/lib/mysql
    restart: always
    environment:
      MARIADB_ROOT_PASSWORD: somewordpress
      MARIADB_DATABASE: wordpress
      MARIADB_USER: wordpress
      MARIADB_PASSWORD: wordpress

  wordpress:
    depends_on:
      - db
    image: wordpress:latest
    ports:
      - "8000:80"
    restart: always
    environment:
      WORDPRESS_DB_HOST: db:3306
      WORDPRESS_DB_USER: wordpress
      WORDPRESS_DB_PASSWORD: wordpress
      WORDPRESS_DB_NAME: wordpress

volumes:
  db_data:

Levantar los contenedores:
docker compose up -d

Comprobar que están funcionando:
docker ps

Deberías ver 2 contenedores activos:
uno de wordpress y otro de mariadb.

Abrir WordPress en el navegador:
En tu navegador entra a: http://localhost:8000

Ahí ya aparece el instalador de WordPress

Parar el sistema:
docker compose down

Volver a arrancarlo (mantiene datos):
docker compose up -d

Tu WordPress seguirá con la misma información guardada.

Ver el volumen (donde se guarda la base de datos):
docker volume ls

Verás uno llamado parecido a:
wordpress-docker_db_data
