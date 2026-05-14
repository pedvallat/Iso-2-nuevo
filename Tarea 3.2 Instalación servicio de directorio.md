# Instalación, configuración y mantenimiento del servicio de directorio

Actividad 1: Diseño del DIT
El árbol de directorio tiene esta lógica: la raíz es dc=serveisbcn,dc=com. Debajo van las dos sedes (ou=Barcelona y ou=Sabadell) como ramas principales, ya que las consultas habituales son por sede. Dentro de cada sede hay dos unidades organizativas: ou=Personal y ou=Equipamiento.

<img width="759" height="424" alt="Captura desde 2026-05-14 10-25-58" src="https://github.com/user-attachments/assets/7b13f33e-f0fb-4f6b-9972-275bc84a99df" />

<img width="759" height="506" alt="Captura desde 2026-05-14 10-28-00" src="https://github.com/user-attachments/assets/529e078f-cb2b-4b89-927e-833a7c29c952" />

Actividad 2: Instalación de OpenLDAP

Actualizar el sistema:

<img width="916" height="957" alt="Captura desde 2026-05-14 10-32-36" src="https://github.com/user-attachments/assets/3b2b0bf3-c68a-48fa-b0b6-b2108133ce3b" />

Instalar slapd y utilidades cliente:

<img width="919" height="814" alt="Captura desde 2026-05-14 10-48-05" src="https://github.com/user-attachments/assets/8b3e6f37-5254-4010-b919-1504a84ea23f" />

Reconfigurar slapd para ajustar el dominio base:

<img width="922" height="142" alt="Captura desde 2026-05-14 10-50-52" src="https://github.com/user-attachments/assets/17fd3a60-ed2f-49d1-bdb4-24b28812a4c6" />

Verificar que el servicio está activo:

<img width="994" height="416" alt="Captura desde 2026-05-14 10-51-37" src="https://github.com/user-attachments/assets/1b9223b2-0bb7-4b78-a6e7-29b7415ce197" />

Tabla de ejecutables instalados:

<img width="994" height="649" alt="Captura desde 2026-05-14 10-53-23" src="https://github.com/user-attachments/assets/a715bd36-0c84-4a7d-b7dd-d6a3b4da7674" />

Verificar que el servidor escucha en el puerto 389:

<img width="994" height="162" alt="Captura desde 2026-05-14 10-54-57" src="https://github.com/user-attachments/assets/315964da-c9a8-4de2-b525-fe60c628fe2a" />

Comprobar conexión básica:

<img width="994" height="455" alt="Captura desde 2026-05-14 10-55-53" src="https://github.com/user-attachments/assets/655a049c-3e61-4978-81f5-e2a92ae27d07" />

Actividad 3: Configuración del slapd — módulo ppolicy

Crear archivo LDIF para cargar el módulo ppolicy:

<img width="994" height="144" alt="Captura desde 2026-05-14 11-16-08" src="https://github.com/user-attachments/assets/e00dd3e9-e8f9-4c9b-b0d6-6e500d5eb4fa" />

Aplicar el módulo:

<img width="994" height="164" alt="Captura desde 2026-05-14 11-16-54" src="https://github.com/user-attachments/assets/b523036f-e782-4424-8fb9-fda2433c01b7" />

Cargar el esquema ppolicy:

<img width="994" height="46" alt="Captura desde 2026-05-14 11-18-32" src="https://github.com/user-attachments/assets/ce024e3d-734b-47fc-ac2a-d8a122e405d0" />

Verificar que el módulo se cargó:

<img width="994" height="461" alt="Captura desde 2026-05-14 11-18-46" src="https://github.com/user-attachments/assets/0feaf06e-00fb-42dc-ac39-e5ba50317a7c" />

Crear overlay ppolicy sobre la base de datos:

<img width="994" height="303" alt="Captura desde 2026-05-14 11-20-09" src="https://github.com/user-attachments/assets/52805866-fb1d-4fda-803c-3a0a2bf6cb8b" />

Verificar la configuración:

<img width="994" height="542" alt="Captura desde 2026-05-14 11-20-53" src="https://github.com/user-attachments/assets/3eca88e9-0e72-45e7-8944-e5ea316b6a51" />

Actividad 4: Estructurar y añadir información (LDIF)

Crear el archivo LDIF completo:

<img width="994" height="824" alt="Captura desde 2026-05-14 11-22-08" src="https://github.com/user-attachments/assets/bc32322a-07c9-4657-83a4-eec031af02bd" />

Ver el archivo creado:

cat /tmp/serveisbcn.ldif

Añadir la información al directorio:

<img width="994" height="119" alt="Captura desde 2026-05-14 11-23-28" src="https://github.com/user-attachments/assets/3e9df2e5-2875-4087-a123-5bfabd508ec1" />

Verificar que todo se añadió correctamente:

<img width="994" height="138" alt="Captura desde 2026-05-14 11-24-11" src="https://github.com/user-attachments/assets/fe75ab81-a9dd-4b8e-bc80-f78107a8c36f" />

Actividad 5: Búsquedas en el directorio

Consulta 1: Lista de usuarios con su teléfono:

<img width="994" height="114" alt="Captura desde 2026-05-14 11-26-37" src="https://github.com/user-attachments/assets/286812b7-393e-4029-af33-580adda939dc" />

 Consulta 2: Lista de equipos de la organización:

<img width="994" height="112" alt="Captura desde 2026-05-14 11-27-28" src="https://github.com/user-attachments/assets/9805aded-361f-4786-806f-3bbe3eb916aa" />

Verificar toda la estructura del árbol:

<img width="654" height="95" alt="Captura desde 2026-05-14 11-30-07" src="https://github.com/user-attachments/assets/87843f52-4699-4dce-b1d6-7a52fd021041" />

<img width="654" height="186" alt="Captura desde 2026-05-14 11-29-35" src="https://github.com/user-attachments/assets/73392ca6-b125-4952-aa24-716ae5ac7559" />
