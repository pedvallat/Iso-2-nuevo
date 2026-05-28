# Informe de Ejecución - Práctica: Accediendo a interfaz gráfica con NoVNC

**Alumno:** Pedro Valdeolivas Latorre

**NIA:** 10641451

**Fecha:** jue 28 may 2026 10:04:36 CEST

**Máquina:** pedro@pedro-VirtualBox

---

## 1. Código Fuente

### docker-compose.yml
```yaml
version: '3.8'

services:
  novnc:
    image: theasp/novnc
    container_name: novnc
    ports:
      - "8081:8080"
    environment:
      - RUN_FLUXBOX=yes
      - RUN_XTERM=yes
    restart: unless-stopped
```

## 2. Versión de Docker

```text
Docker version 29.1.3, build 29.1.3-0ubuntu3~22.04.2
```

## 3. Estado del Sistema (Proof of Life)

### Contenedores en ejecución
```text
CONTAINER ID   NAMES                          STATUS                      PORTS
28faa56b8d9f   novnc                          Up 2 minutes                0.0.0.0:8081->8080/tcp, [::]:8081->8080/tcp
8b3665d09a0d   wordpress-docker_wordpress_1   Up 9 minutes                0.0.0.0:8000->80/tcp, [::]:8000->80/tcp
3ef745e3fa2d   wordpress-docker_db_1          Up 9 minutes                3306/tcp
35ab81a80739   django-docker_db_1             Exited (1) 2 months ago     
07700213df4f   django-docker_web_1            Exited (255) 2 months ago   0.0.0.0:8000->8000/tcp, [::]:8000->8000/tcp
bef2e2013c60   django_docker-web-1            Exited (255) 2 months ago   0.0.0.0:8000->8000/tcp, [::]:8000->8000/tcp
d732d60359dc   django_docker-db-1             Exited (1) 3 months ago     
```

### Redes Docker
```text
NETWORK ID     NAME                       DRIVER    SCOPE
ca0ac902410b   bridge                     bridge    local
a51a3b2a4cfb   django-docker_default      bridge    local
9d977a69239c   django_docker_default      bridge    local
0e58cbcbee92   host                       host      local
e2d6643cb679   iso-2-nuevo_default        bridge    local
61441039ec42   none                       null      local
eef6ae3080cc   whisper-practica_default   bridge    local
8185bae1a59d   wordpress-docker_default   bridge    local
```

### Volúmenes Docker
```text
DRIVER    VOLUME NAME
local     3baf8d762a473cc18a7965f0e88fe26ad2e908941bb4d6ca46de8e8d98e31818
local     55d3fc95f3870debdc499193a50185897d40d1fa3e8690124df0becfcce39865
local     572bfa1f562f26c83c16b770a222c5e7b3e10cd9956de3e5827113f5a75b9031
local     88188ec7b4c90471749f90be4f5ce4f82fe4e9df454b960fc3cd7f5f8e8d3262
local     a8074273b58e7cb05097abfd54e1750545d8e835195ac07f1857b7fc3c0ecb0c
local     b4a511478c8f846f801159e930c9f4fa09cee7ac38ec7031a84e014970ddf29a
local     b592461cc6c75aebfc7da8b84f144d46a551765d2ce8f05a6b5605f3de7de3f3
local     wordpress-docker_db_data
```

## 4. Logs del contenedor NoVNC (últimas 20 líneas)
```text
+ exec supervisord -c /app/supervisord.conf
2026-05-28 08:02:18,590 CRIT Supervisor is running as root.  Privileges were not dropped because no user is specified in the config file.  If you intend to run as root, you can set user=root in the config file to avoid this message.
2026-05-28 08:02:18,594 INFO Included extra file "/app/conf.d/fluxbox.conf" during parsing
2026-05-28 08:02:18,594 INFO Included extra file "/app/conf.d/websockify.conf" during parsing
2026-05-28 08:02:18,594 INFO Included extra file "/app/conf.d/x11vnc.conf" during parsing
2026-05-28 08:02:18,594 INFO Included extra file "/app/conf.d/xterm.conf" during parsing
2026-05-28 08:02:18,595 INFO Included extra file "/app/conf.d/xvfb.conf" during parsing
2026-05-28 08:02:18,603 INFO supervisord started with pid 1
2026-05-28 08:02:19,609 INFO spawned: 'fluxbox' with pid 7
2026-05-28 08:02:19,623 INFO spawned: 'websockify' with pid 8
2026-05-28 08:02:19,654 INFO spawned: 'x11vnc' with pid 9
2026-05-28 08:02:19,669 INFO spawned: 'xterm' with pid 10
2026-05-28 08:02:19,677 INFO spawned: 'xvfb' with pid 11
2026-05-28 08:02:19,827 INFO exited: xterm (exit status 1; not expected)
2026-05-28 08:02:20,975 INFO success: fluxbox entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
2026-05-28 08:02:20,975 INFO success: websockify entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
2026-05-28 08:02:20,976 INFO success: x11vnc entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
2026-05-28 08:02:20,987 INFO spawned: 'xterm' with pid 18
2026-05-28 08:02:20,989 INFO success: xvfb entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
2026-05-28 08:02:22,251 INFO success: xterm entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
```

## 5. Verificación del puerto
```text
Puerto 8081 - HTTP Status: 200
```

---

> Informe generado automáticamente con evidencias.sh
> Alumno: Pedro Valdeolivas Latorre - NIA: 10641451
