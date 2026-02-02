# Bot de Telegram con Whisper AI

PASO 1. Crear el bot de Telegram (fuera de la terminal):

En Telegram abre @BotFather

Ejecuta:

/newbot

Pon nombre y username

Guarda el TOKEN (lo usarás luego)

PASO 2. Obtener el ID de usuario o grupo:

Abre @RawDataBot

Envía un mensaje

Copia el valor:

message.from.id

Ejemplos:

Usuario: 123456789

Grupo: -123456789

PASO 3. Clonar el repositorio

En Ubuntu:

cd ~
git clone https://github.com/sergarb1/telegram-bot-whisper-cpp
cd telegram-bot-whisper-cpp

PASO 4. Configurar el archivo .env

Edita el archivo:

nano .env

Ejemplo de configuración mínima:

TELEGRAM_BOT_TOKEN=PEGA_AQUI_TU_TOKEN
ALLOWED_CHAT_IDS=123456789
WHISPER_MODEL=small
AUDIO_LANGUAGE=auto

Opciones importantes:

ALLOWED_CHAT_IDS=* → permite a todo el mundo

Modelos posibles:

tiny | base | small | medium | large

Recomendado: small

PASO 5. Construir y arrancar el bot con Docker

Ejecuta:

docker compose up --build -d

Comprueba que está funcionando:

docker compose ps

Ver logs (muy útil si falla algo):

docker compose logs -f

PASO 6. Probar el bot

Desde Telegram:

Envía una nota de voz al bot

O envía un audio a un grupo autorizado donde esté el bot

El bot responderá con la transcripción del audio.
