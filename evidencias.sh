#!/bin/bash

# Script para generar evidencias de autoría automáticamente
# Alumno: Pedro Valdeolivas Latorre - NIA: 10641451
# Uso: ./evidencias.sh > README.md

echo "# Informe de Ejecución - Práctica: Accediendo a interfaz gráfica con NoVNC"
echo ""
echo "**Alumno:** Pedro Valdeolivas Latorre"
echo ""
echo "**NIA:** 10641451"
echo ""
echo "**Fecha:** $(date)"
echo ""
echo "**Máquina:** $(whoami)@$(hostname)"
echo ""
echo "---"
echo ""

echo "## 1. Código Fuente"
echo ""
echo "### docker-compose.yml"
echo '```yaml'
cat docker-compose.yml
echo '```'
echo ""

echo "## 2. Versión de Docker"
echo ""
echo '```text'
docker --version
echo '```'
echo ""

echo "## 3. Estado del Sistema (Proof of Life)"
echo ""
echo "### Contenedores en ejecución"
echo '```text'
docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}"
echo '```'
echo ""

echo "### Redes Docker"
echo '```text'
docker network ls
echo '```'
echo ""

echo "### Volúmenes Docker"
echo '```text'
docker volume ls
echo '```'
echo ""

echo "## 4. Logs del contenedor NoVNC (últimas 20 líneas)"
echo '```text'
docker logs --tail 20 novnc 2>&1
echo '```'
echo ""

echo "## 5. Verificación del puerto"
echo '```text'
curl -s -o /dev/null -w "Puerto 8081 - HTTP Status: %{http_code}\n" http://localhost:8081/vnc.html
echo '```'
echo ""

echo "---"
echo ""
echo "> Informe generado automáticamente con evidencias.sh"
echo "> Alumno: Pedro Valdeolivas Latorre - NIA: 10641451"
