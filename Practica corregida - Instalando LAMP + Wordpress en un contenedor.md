# Caso práctico 02 - Instalando LAMP + Wordpress en un contenedor

Hacemos un sudo apt install:

<img width="795" height="155" alt="Screenshot_20260324_103153" src="https://github.com/user-attachments/assets/af747615-8c50-4608-b304-5daba071895e" />

Crear estructura del proyecto:

<img width="549" height="72" alt="Screenshot_20260324_103243" src="https://github.com/user-attachments/assets/3aadf184-c645-4814-b58a-dc983865121d" />

<img width="594" height="70" alt="Screenshot_20260324_103435" src="https://github.com/user-attachments/assets/c45d4fef-d6ab-4245-a4a7-30f846191eb7" />

Creamos el Dockerfile con sudo nano Dockerfile

<img width="733" height="329" alt="Screenshot_20260324_104647" src="https://github.com/user-attachments/assets/db381d09-e451-4e77-b4a1-57ed5de1ee97" />

El nano requirements.txt

<img width="704" height="180" alt="Screenshot_20260324_103937" src="https://github.com/user-attachments/assets/64e27e06-99b8-4245-9c40-078de1d7cb03" />

Y el docker-compose.yml

<img width="720" height="475" alt="Screenshot_20260324_104006" src="https://github.com/user-attachments/assets/e68707bb-b5a6-4154-9414-1782c35f4b5a" />

Levantar el sistema:

<img width="919" height="812" alt="Screenshot_20260324_104027" src="https://github.com/user-attachments/assets/e416b31e-e1af-4ac0-89bf-3ada25e9d63c" />

Crear proyecto Django:

<img width="929" height="76" alt="Screenshot_20260324_104732" src="https://github.com/user-attachments/assets/7ed2e09e-08fd-4f9a-8360-8c82a3275f4d" />

Arreglar permisos:

<img width="825" height="22" alt="Screenshot_20260324_112901" src="https://github.com/user-attachments/assets/3f468895-3b18-487f-b94c-5cfca6385116" />

Configurar PostgreSQL en Django:

Hacemos un sudo nano codigo/ejemplodjango/settings.py y borramos la DATABASES que habia y le añadimos esta:

<img width="643" height="240" alt="Screenshot_20260324_105010" src="https://github.com/user-attachments/assets/94f726e3-5dd5-4d87-a1a0-5daa8074b4f7" />

Reiniciamos el sistema:

<img width="726" height="191" alt="Screenshot_20260324_105055" src="https://github.com/user-attachments/assets/98e36483-88ca-4f44-bd1f-ef03a7b306f2" />

Comprobamos que funciona:

<img width="927" height="110" alt="Screenshot_20260324_113247" src="https://github.com/user-attachments/assets/d2ea0e5e-620d-4ec0-9c7b-8ec81a7d9918" />

Abrimos en el navegador con http://localhost:8000:

<img width="552" height="417" alt="Screenshot_20260324_113458" src="https://github.com/user-attachments/assets/6c3bb59a-abb7-4780-accc-dd165044cac3" />
