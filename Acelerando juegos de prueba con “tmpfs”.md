# Acelerando juegos de prueba con “tmpfs”

# Preparar el archivo de base de datos:

Necesitas un archivo dump.sql

Colócalo, por ejemplo, en tu carpeta personal:

/home/tu_usuario/dump.sql

Comprueba que existe:

ls -lh ~/dump.sql

# Contenedor MySQL SIN tmpfs

Crear el contenedor:

docker run -d --rm --name mysqlsintmpfs -p 3306:3306 \
-v /home/tu_usuario/dump.sql:/docker-entrypoint-initdb.d/dump.sql \
-e MYSQL_ALLOW_EMPTY_PASSWORD=TRUE \
-e MYSQL_USER=cefireuser \
-e MYSQL_PASSWORD=cefirepass \
mysql:5.6

# Contenedor MySQL CON tmpfs

Crear el contenedor usando memoria:

docker run -d --rm --name mysqlcontmpfs -p 3307:3306 \
-v /home/tu_usuario/dump.sql:/docker-entrypoint-initdb.d/dump.sql \
--tmpfs /var/lib/mysql:rw,noexec,nosuid,size=1024m \
-e MYSQL_ALLOW_EMPTY_PASSWORD=TRUE \
-e MYSQL_USER=cefireuser \
-e MYSQL_PASSWORD=cefirepass \
mysql:5.6

Puedes ver si están activos:
docker ps

# Entrar a MySQL y hacer pruebas
Probar el contenedor SIN tmpfs:

docker exec -it mysqlsintmpfs bash

Dentro del contenedor:
mysql -u root

Ahora en MySQL:
USE test;
SELECT SQL_NO_CACHE * FROM posts;

# Probar el contenedor CON tmpfs
docker exec -it mysqlcontmpfs bash

Dentro:
mysql -u root

Y repetimos:
USE test;
SELECT SQL_NO_CACHE * FROM posts;

PARTE 4 — Limpiar todo

Como usamos --rm, al parar se borran solos:

docker stop mysqlsintmpfs
docker stop mysqlcontmpfs

