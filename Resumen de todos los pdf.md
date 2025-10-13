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
