# Caso práctico 02 - Instalando LAMP + Wordpress en un contenedor

Crearemos un contenedor con la imagen base “ubuntu” (esta vez, indicando una versión, la que tiene la etiqueta “22.10”), al que llamaremos LAMP y en el que expondremos su puesto 80 dentro del puerto 8080 de nuestro sistema. Además, al crearlo, dejaremos lista una “shell” para instalar los programas pertinentes.
Esto podemos hacerlo con la orden:

<img width="882" height="145" alt="Screenshot_20260115_093955" src="https://github.com/user-attachments/assets/8d516dba-c3d6-48c7-b6ac-ed9d21ab102e" />

En primer lugar, actualizamos la lista de paquetes del repositorio:

<img width="883" height="326" alt="Screenshot_20260115_094410" src="https://github.com/user-attachments/assets/cca5485c-cded-419f-bebd-0cc14d206c5a" />

Tras ello, instalamos los paquetes necesarios para instalar LAMP + Wordpress

<img width="859" height="637" alt="Screenshot_20260115_094511" src="https://github.com/user-attachments/assets/5754ea6a-3fdd-4808-ba96-5180d57cf7ab" />

Tras ello podemos lanzar el servicio Apache con el comando:

<img width="607" height="58" alt="Screenshot_20260115_094928" src="https://github.com/user-attachments/assets/1a4f43f7-8b25-4df7-80fa-d8ab1b14899e" />

Antes que nada, podemos instalar un editor de texto en modo consola que sea de vuestro agrado. Por ejemplo, con este comando podemos instalar “nano”:

<img width="746" height="158" alt="Screenshot_20260115_095037" src="https://github.com/user-attachments/assets/4f463fa8-39c0-4b31-ad9f-a2d1034c2acd" />

Una vez instalado vuestro editor favorito, procedemos a editar la configuración de Apache para trabajar con Wordpress. Deberemos crear el fichero de configuración del sitio en Apache “/etc/apache2/sites-available/wordpress.conf” que configurará el acceso al sitio Wordpress.
Dicho fichero deberá tener el siguiente contenido:

<img width="753" height="393" alt="Screenshot_20260115_095726" src="https://github.com/user-attachments/assets/07124f54-0f8c-403a-9318-b4bfb25d90fe" />

Creado el fichero, deberemos cargar el sitio, habilitar “URL rewriting” y recargar Apache con los siguientes comandos:

<img width="550" height="92" alt="Screenshot_20260115_095917" src="https://github.com/user-attachments/assets/f75789c7-5d55-4c81-bb48-ace923f99db7" />

<img width="514" height="80" alt="Screenshot_20260115_100020" src="https://github.com/user-attachments/assets/57e63ff7-77d2-4817-8326-d20a08c959ee" />

<img width="603" height="53" alt="Screenshot_20260115_100038" src="https://github.com/user-attachments/assets/1ff96fad-1609-42d6-b067-a14f3121ee55" />

En primer lugar, deberemos poner en marcha el servicio con el comando:

<img width="580" height="51" alt="Screenshot_20260115_100233" src="https://github.com/user-attachments/assets/308aa1f2-6505-49fb-9d79-02a2b18f6a22" />

Tras ello, deberemos ejecutar el comando para generar un password de root de MySQL Server de forma segura (deberemos recordarlo) y otras opciones. El comando a ejecutar es:

<img width="647" height="188" alt="Screenshot_20260115_100448" src="https://github.com/user-attachments/assets/c19147f9-559f-4df1-8ad1-ef5851d4cea1" />

Tras ello, accederemos a la base de datos con el cliente MySQL de la siguiente forma

<img width="724" height="208" alt="Screenshot_20260115_100700" src="https://github.com/user-attachments/assets/7841fed0-ab82-45d4-b156-25e23f770b0f" />

Tras indicar la contraseña de “root”, podremos escribir comandos para MySQL. Escribiremos los siguientes comandos. En primer lugar, creamos la base de datos “wordpress”:

<img width="436" height="101" alt="Screenshot_20260115_101231" src="https://github.com/user-attachments/assets/41056c78-e12c-42fd-a39e-23ea386aac03" />

Tras ellos, creamos el usuario “wordpress” (con contraseña “MiPass-2023”) y le damos permisos totales en la base de datos “wordpress”.

<img width="721" height="83" alt="Screenshot_20260115_101425" src="https://github.com/user-attachments/assets/d70f3eb9-e5f1-46bf-8ad8-73c73db536c7" />

<img width="847" height="91" alt="Screenshot_20260115_101615" src="https://github.com/user-attachments/assets/95fe4fa3-8654-47ac-bc6a-9e66b14aaebf" />

Finalmente, propagamos los privilegios establecidos para que ya estén operativos en el servidor.

<img width="469" height="95" alt="Screenshot_20260115_101709" src="https://github.com/user-attachments/assets/c9a396db-5f04-4fbb-948e-74685e016626" />

Usando un editor de texto de consola, vamos a editar el fichero de configuración de Wordpress, “/etc/wordpress/config-localhost.php”, quedando de la forma que quede como ahora indicamos:

<img width="703" height="227" alt="Screenshot_20260115_102604" src="https://github.com/user-attachments/assets/300b113e-0c3c-40a1-80b5-46241229af81" />

Podemos hacerlo siguiendo los siguientes pasos dentro del contenedor:
● Accedemos a la carpeta de nuestro usuario, “/root” escribiendo “cd”, “cd ~” o “cd /root”.
● Ahí, con un editor de texto, modificamos el fichero “.bashrc” y al final del mismo añadimos
las líneas siguientes.

<img width="893" height="854" alt="Screenshot_20260115_102934" src="https://github.com/user-attachments/assets/55ee3ff9-2c9f-4092-94d3-55fc663f7825" />

Podremos observar algo similar a esto:

<img width="419" height="254" alt="Screenshot_20260115_103226" src="https://github.com/user-attachments/assets/989e5a24-91a6-4d1a-a85e-060db21edd92" />

