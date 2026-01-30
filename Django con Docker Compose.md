# Django con Docker Compose

Instalar Docker Compose (plugin):
sudo apt install docker-compose-plugin -y
docker compose version

Crear carpeta del proyecto:
mkdir django-docker
cd django-docker

Creamos carpetas para persistencia:
mkdir codigo
mkdir -p datos/db

Crear requirements.txt:
nano requirements.txt

Contenido:
Django>=3.0,<4.0
psycopg2-binary>=2.8

Crear Dockerfile:
nano Dockerfile

Contenido:
FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt

Crear docker-compose.yml:
nano docker-compose.yml

Contenido:

version: "3.9"

services:
  db:
    image: postgres
    volumes:
      - ./datos/db:/var/lib/postgresql/data
    environment:
      - POSTGRES_DB=postgres
      - POSTGRES_USER=postgres
      - POSTGRES_PASSWORD=postgres

  web:
    build: .
    command: python manage.py runserver 0.0.0.0:8000
    volumes:
      - ./codigo:/code
    ports:
      - "8000:8000"
    depends_on:
      - db

Construir la imagen:
docker compose build

Levantar los contenedores:
docker compose up -d

Comprobar estado:
docker compose ps

El contenedor web estará parado (aún no existe proyecto Django).

Crear proyecto Django:
docker compose run web django-admin startproject ejemplodjango .

Esto crea el proyecto dentro de ./codigo

Ahora arreglamos permisos (importante):
sudo chown -R $USER:$USER codigo

Configurar Django para usar PostgreSQL:

Editar configuración:
nano codigo/ejemplodjango/settings.py

Busca el bloque DATABASES y borra el de SQLite.
Sustitúyelo por:

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'postgres',
        'USER': 'postgres',
        'PASSWORD': 'postgres',
        'HOST': 'db',
        'PORT': 5432,
    }
}

Reiniciar los contenedores:
docker compose down
docker compose up -d

Comprobar:
docker compose ps
Ahora web debe estar "Up"

Probar en el navegador:
Abre:
http://localhost:8000

Deberías ver la página inicial de Django 
