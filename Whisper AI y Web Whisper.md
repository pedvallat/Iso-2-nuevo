# Whisper AI y Web Whisper

Crear directorio de trabajo:

Por ejemplo, en tu HOME:

mkdir whisper-docker

cd whisper-docker

Clonar el repositorio Web Whisper:

git clone https://codeberg.org/pluja/web-whisper

Entramos en el directorio clonado:

cd web-whisper

Comprobamos el contenido:

ls

Deberías ver algo parecido a:

example.docker-compose.yml

example.env

Crear el fichero docker-compose.yml:

Copiamos el archivo de ejemplo:

cp example.docker-compose.yml docker-compose.yml

Crear el fichero .env:

Copiamos el fichero de entorno:

cp example.env .env

Nota importante (como dice la práctica):

Con la configuración por defecto ya funciona, no es obligatorio modificar nada.

Si quieres ver el contenido:

nano .env

Construir y levantar Whisper AI + Web Whisper:

Ejecuta el siguiente comando:

docker compose up --build -d

Qué hace este comando:

--build → construye las imágenes necesarias

-d → ejecuta los contenedores en segundo plano

Descarga Whisper AI y la interfaz Web Whisper

Comprobar que está funcionando:

Ver contenedores activos:

docker compose ps

7. Acceder a Whisper Web:

Abre el navegador y entra en: http://localhost:3000

Si todo está correcto, verás la interfaz web de Whisper, donde puedes:

Subir audios

Convertir audio a texto usando Whisper AI
