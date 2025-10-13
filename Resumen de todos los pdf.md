# UD01. INTRODUCCIÓN A LOS CONTENEDORES Y A DOCKER

1. INTRODUCCIÓN

La unidad explica qué son los contenedores, centrándose en contenedores Linux y Docker como tecnología principal.

2. CONCEPTOS PREVIOS
2.1 Virtualización

Tecnología que abstrae el hardware permitiendo administrar recursos virtuales.
Ventajas: ahorro de costes, despliegue de sistemas, pruebas de software, análisis de malware, etc.

2.2 ¿Qué es una máquina virtual?

Simula una máquina física completa. Permite ejecutar sistemas operativos y software de forma independiente.
Tipos principales:

Máquinas virtuales de proceso

Emuladores

Hipervisores

Contenedores (Docker pertenece a este grupo)

2.3 Máquina virtual de proceso

Ejecuta un programa diseñado para otro sistema o arquitectura.
Ejemplos:

JVM (Java Virtual Machine)

.NET Platform

2.4 Emulador

Software que imita hardware o una API específica.
Ejemplo: Wine, que emula la API de Windows en Linux o Mac.

2.5 Hipervisor

Virtualiza hardware completo para ejecutar varios sistemas operativos.
Ejemplos: VirtualBox, VMWare.

3.2 Analogía

Comparación con contenedores marítimos: cada uno es independiente, pero comparten la infraestructura del barco (el sistema anfitrión).

3.3 Contenedores para desarrollo y despliegue

Permiten crear entornos idénticos para desarrollo y producción, evitando conflictos de dependencias.

3.4 Contenedores para servicios

Facilitan el despliegue de servicios individuales (microservicios).

3.5 Ventajas e inconvenientes

Ventajas:

Ligereza y velocidad

Escalabilidad

Consistencia entre entornos

Aislamiento de procesos

Inconvenientes:

Aislamiento menos completo que la virtualización total

Dependencia del sistema base

3.6 Cuándo usar contenedores

Cuando se necesiten entornos reproducibles, portables y ligeros para ejecutar servicios o aplicaciones.

4. CONTENEDORES EN SISTEMAS LINUX
4.1 Entornos privados antiguos

Unix ya tenía conceptos de aislamiento (por ejemplo, chroot).

4.2 Contenedores modernos

Usan tecnologías como namespaces y cgroups.

4.3 Funcionamiento

Cada contenedor opera como un proceso aislado, pero usando el kernel del sistema anfitrión.

4.4 Creación manual

Es posible crear contenedores a mano usando comandos de Linux, aunque Docker lo simplifica enormemente.

4.5 Compatibilidad

Los contenedores Linux no se ejecutan directamente en Windows o macOS, pero Docker usa una capa intermedia (como una VM ligera) para hacerlo posible.

5. CONTENEDORES DOCKER
5.1 ¿Qué es Docker?

Plataforma para crear, desplegar y gestionar contenedores.
Automatiza el aislamiento, configuración y ejecución de aplicaciones en entornos reproducibles.

5.3 Docker en Windows y macOS

Funciona mediante una máquina virtual que ejecuta un kernel Linux, integrándose con los sistemas anfitriones.

5.4 Docker con contenedores Windows Server Core y macOS

Permite ejecutar contenedores nativos de cada sistema operativo en sus respectivas plataformas.

6. CONCLUSIÓN

Docker revolucionó la virtualización al hacerla más ligera, rápida y fácil de implementar. Los contenedores se han convertido en el estándar para el desarrollo moderno y el despliegue de servicios.

7. BIBLIOGRAFÍA

Referencias a Wikipedia y documentación de Docker.

8. LICENCIAS

Todos los elementos externos usados mantienen licencias abiertas y libres.

# UD02 – Instalación de Docker

 1. Introducción

La unidad explica los métodos de instalación de Docker en Linux, Windows y macOS.
Se recomienda usar Linux (Ubuntu), ya que la implementación es más estable y sencilla que en Windows o macOS.

 2. Instalación de Docker en Linux (Ubuntu)
 Método recomendado: desde el repositorio oficial de Docker-CE

(Las versiones de Ubuntu soportadas: 18.04, 20.04, 22.04, 22.10)

Paso 1: Eliminar versiones antiguas

Evita conflictos con versiones previas.
sudo apt-get remove docker docker-engine docker.io containerd runc

Paso 2: Añadir el repositorio de Docker CE

Actualizar paquetes e instalar dependencias:

sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

Descargar la clave GPG y crear el repositorio:

sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

Añadir el repositorio de Docker:

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
| sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

Paso 3: Instalar Docker Engine CE

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

Verificar instalación:

sudo docker version
2.3 Post-instalación
Permitir usar Docker sin sudo

Permite ejecutar Docker con usuarios normales:
sudo groupadd docker
sudo usermod -aG docker $USER

Si hay errores de permisos:

sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "$HOME/.docker" -R

Activar o desactivar Docker al inicio

Activar arranque automático:

sudo systemctl enable docker.service
sudo systemctl enable containerd.service

Desactivar:

sudo systemctl disable docker.service
sudo systemctl disable containerd.service

Iniciar o detener manualmente:

sudo systemctl start|stop|restart docker.service

Desinstalar Docker

Eliminar Docker:

sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

Eliminar datos:

sudo docker system prune -a
sudo rm -rf /var/lib/docker

3. Instalación de Docker en Windows

Windows 10 Pro / Server

Requiere activar Hyper-V:
Windows 10 Home

Requiere activar WSL2 (Windows Subsystem for Linux 2):
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
wsl --set-default-version 2

Luego instalar Docker Desktop desde:
Docker Hub – Windows

Verificar instalación:

docker version

Si hay errores, se recomienda desinstalar completamente Docker Desktop y borrar la carpeta .docker y las variables de entorno.

4. Instalación de Docker en macOS

Descargar e instalar desde:
https://hub.docker.com/editions/community/docker-ce-desktop-mac/

 5. Conclusión

Docker puede instalarse en Linux, Windows o macOS.

Linux es el entorno más estable y recomendado.

Tras instalarlo, se aconseja configurar usuarios sin root y habilitar arranque automático.

# UD 03 Principales acciones con Docker

Esta unidad explica las acciones básicas necesarias para manejar Docker desde la línea de comandos, sin utilizar interfaz gráfica. Su objetivo es que el usuario aprenda a crear, ejecutar y gestionar contenedores con soltura.

1. Imágenes y contenedores

Una imagen es una plantilla de solo lectura que contiene todo lo necesario para ejecutar una aplicación.

Un contenedor es una instancia en ejecución de una imagen, con un sistema de ficheros propio y un identificador único.

Las imágenes y contenedores se almacenan normalmente en /var/lib/docker/.

Comando útil:
docker info
Muestra información del sistema Docker, como el driver de almacenamiento y la ruta del directorio de datos.

2. Docker Hub

Es el registro público de imágenes Docker, donde se pueden buscar y descargar imágenes listas para usar.

3. Comandos básicos para manejar contenedores
Crear y ejecutar contenedores

docker run [parámetros] imagen [comando]

Crea un contenedor a partir de una imagen y lo arranca.
Ejemplo inicial:
docker run hello-world

Descarga la imagen “hello-world” desde Docker Hub (si no existe localmente), la ejecuta y muestra un mensaje de prueba.

Otros comandos relacionados:
docker create imagen       # Crea un contenedor sin arrancarlo

Listar contenedores
docker ps         # Muestra contenedores en ejecución
docker ps -a      # Muestra todos los contenedores (activos y detenidos)

Parar, arrancar y reiniciar
docker start <id/nombre>      # Inicia un contenedor detenido
docker stop <id/nombre>       # Detiene un contenedor
docker restart <id/nombre>    # Reinicia un contenedor

Inspeccionar contenedores
docker inspect <id/nombre>
Muestra información detallada sobre configuración, red, volúmenes, etc.

Ejecutar comandos dentro de un contenedor
docker exec -it <id/nombre> bash
docker exec -d <id/nombre> touch /tmp/prueba
docker exec -it -e VAR=1 <id/nombre> bash
Permite ejecutar comandos o abrir una shell dentro de un contenedor en ejecución.

Copiar archivos entre anfitrión y contenedor

docker cp <id>:/ruta/fichero ./        # Del contenedor al host
docker cp ./archivo <id>:/ruta/        # Del host al contenedor

Acceder a un proceso en ejecución
docker attach <id/nombre>
Conecta la terminal al proceso principal del contenedor.

Ver logs de un contenedor

docker logs <id/nombre>
docker logs -f --until=2s <id/nombre>
Muestra los registros de salida estándar y error del contenedor.

Renombrar contenedores
docker rename contenedor1 contenedor2

4. Parámetros importantes de docker run

Algunos de los modificadores más usados:
Parámetro	Función
-i	Modo interactivo (mantiene entrada estándar)
-t	Asigna pseudo-terminal
--name	Asigna un nombre al contenedor
--rm	Elimina el contenedor al detenerlo
-d	Ejecuta en segundo plano (background)
-p	Mapea puertos (formato host:contenedor)
-e	Define variables de entorno

Conclusión

Con estos comandos, se domina el ciclo básico de trabajo con Docker: descargar imágenes, crear contenedores, gestionarlos, ejecutar comandos internos, copiar archivos y consultar registros.
Estas acciones forman la base para avanzar hacia temas más complejos como la gestión de volúmenes, redes o creación de imágenes personalizadas.

# UD 04 Gestión de imágenes en Docker

En esta unidad se explica cómo gestionar imágenes en Docker, es decir, cómo listarlas, descargarlas, eliminarlas, crear las tuyas propias, exportarlas, subirlas a Docker Hub y construirlas automáticamente mediante un Dockerfile.

Las imágenes son plantillas que sirven de base para crear contenedores. Cada imagen puede tener distintas versiones o tags, y puede modificarse o reutilizarse fácilmente.

1. Listar imágenes locales y disponibles

Para ver las imágenes almacenadas en tu sistema:
docker images

Filtrar por nombre o etiqueta:
docker images ubuntu:14.04
docker images -f=reference="u*:*04"

Buscar imágenes en Docker Hub:
docker search ubuntu

2. Descargar y eliminar imágenes y contenedores

Descargar una imagen desde Docker Hub:
docker pull alpine:3.10

Ver el historial o las capas de una imagen:
docker history nginx

Eliminar una imagen concreta o todas:
docker rmi ubuntu:14.04
docker rmi $(docker images -q)

Eliminar contenedores detenidos:
docker rm <id/nombre>
docker rm $(docker ps -a -q)

Borrar imágenes y contenedores en desuso:
docker system prune -a

3. Crear imágenes propias a partir de contenedores

Puedes generar una nueva imagen desde un contenedor modificado:
docker commit -a "Autor" -m "Comentario" <id> usuario/imagen:version

Agregar una etiqueta (tag) adicional:
docker tag usuario/imagen:2021 usuario/imagen:latest

Ahora puedes ejecutar un contenedor desde tu imagen personalizada:
docker run -it usuario/imagen:2021

4. Exportar e importar imágenes

Exportar una imagen a un archivo .tar:
docker save -o copiaSeguridad.tar usuario/imagen

Importar una imagen desde un archivo:
docker load -i copiaSeguridad.tar

5. Subir imágenes a Docker Hub

Primero, inicia sesión:
docker login

Después, sube tu imagen al repositorio:
docker push usuario/imagen

Cualquier usuario podrá descargarla con:
docker pull usuario/imagen

6. Crear imágenes automáticamente con Dockerfile
Un Dockerfile define cómo construir una imagen paso a paso.

Ejemplo básico:
FROM ubuntu:latest
RUN apt update && apt install -y nano
CMD /bin/bash

Construir la imagen:
docker build -t ubuntunano ./

Principales comandos del Dockerfile:
Comando	Función
FROM	Define la imagen base.
RUN	Ejecuta comandos durante la construcción.
CMD	Indica el comando que se ejecutará al iniciar el contenedor.
EXPOSE	Expone puertos (por ejemplo: EXPOSE 80 443).
COPY / ADD	Copian archivos desde el host al contenedor.
ENTRYPOINT	Define el proceso principal que ejecutará el contenedor.
USER	Cambia el usuario que ejecuta los comandos.
WORKDIR	Cambia el directorio de trabajo.
ENV	Define variables de entorno.
VOLUME, ARG, LABEL, HEALTHCHECK	Añaden opciones avanzadas y metadatos.

7. Consejos para imágenes ligeras

Usa imágenes pequeñas como alpine.

Evita instalar paquetes innecesarios.

Combina comandos con un solo RUN:

RUN apt update && apt install -y nano

Limpia archivos temporales:
rm -rf /var/lib/apt/lists/*
apt-get clean

Conclusión

Docker facilita la gestión completa del ciclo de vida de las imágenes: desde su descarga hasta su publicación en la nube.
Los comandos como docker images, docker pull, docker rmi, docker commit, docker push y docker build son esenciales para crear y mantener tus propios entornos de forma eficiente y automatizada.

# UD 05 Cheatsheet Docker
Gestión de redes
docker network create redtest
● Creamos la red “redtest”

docker network ls
● Nos permite ver el listado de redes existentes.

docker network rm redtest
● Borramos la red “redtest”.

docker run -it --network redtest ubuntu /bin/bash
● Conectamos el contenedor que creamos a la red “redtest”.

docker network connect IDRED IDCONTENEDOR
● Conectamos un contenedor a una red.

docker network disconnect IDRED IDCONTENEDOR
● Desconectamos un contenedor de una red

Volúmenes
docker run -d -it --name appcontainer
 -v /home/sergi/target:/app nginx:latest
● Creamos un contenedor y asignamos un volumen con “binding mount”.

docker run -d -it --name appcontainer
 -v micontenedor:/app nginx:latest 
● Creamos un contenedor y asignamos un volumen Docker llamado “micontenedor”.

docker volume create/ls/rm mivolumen
● Permite crear, listar o eliminar volúmenes Docker.

docker run -d -it --tmpfs /app nginx
● Permite crear un contenedor y asociar un volumen “tmpfs”.

docker run --rm --volumes-from contenedor1 -v /home/sergi/backup:/backup ubuntu bash -c "cd
/datos && tar cvf /backup/copiaseguridad.tar ."
● Permite realizar una copia de seguridad de un volumen asociado a “contenedor1” y que se monta en “/datos”.

Dicha copia finalmente acabará en “/home/sergi/backup” de la máquina anfitrión.
docker volume rm $(docker volume ls -q)
● Permite eliminar todos los lúmenes de tu máquina.
