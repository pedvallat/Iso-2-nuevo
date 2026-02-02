# Despliegue de Stable Diffusion

Actualizar el sistema:

sudo apt update && sudo apt upgrade -y

Instalar Docker:

sudo apt install -y docker.io

Activar Docker al iniciar:

sudo systemctl enable docker

sudo systemctl start docker

Comprobar que funciona:

docker --version

Instalar Docker Compose (plugin oficial):

sudo apt install -y docker-compose-plugin

Verificar:

docker compose version

Dar permisos a tu usuario (opcional pero recomendado):

Para no usar sudo todo el rato:

sudo usermod -aG docker $USER

Cierra sesión y vuelve a entrar para que tenga efecto.

Clonar el repositorio de Stable Diffusion:

git clone https://github.com/AbdBarho/stable-diffusion-webui-docker.git

Entramos en el directorio:

cd stable-diffusion-webui-docker

Descargar modelos y dependencias

Este paso tarda bastante (descarga varios GB):

docker compose --profile download up --build

Aquí se descargan los modelos y se preparan las imágenes Docker.

Lanzar Stable Diffusion:

Opción A: SIN GPU (CPU)

docker compose --profile auto-cpu up --build

Acceder a la interfaz web

Cuando termine y veas mensajes tipo Running on local URL:

Abre el navegador y entra en:

http://localhost:7860

Ahí tendrás Stable Diffusion WebUI funcionando.

Parar el servicio

docker compose down
