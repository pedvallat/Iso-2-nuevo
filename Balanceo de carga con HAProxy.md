# Balanceo de carga con HAProxy

Preparar estructura de carpetas:

<img width="891" height="110" alt="Screenshot_20260126_113519" src="https://github.com/user-attachments/assets/c9239411-a9b5-4be0-8e14-e8da7c7d0b3c" />

Crear imágenes Docker:

Apache 01:

<img width="789" height="43" alt="Screenshot_20260126_113809" src="https://github.com/user-attachments/assets/b11988e1-7bc8-4394-90b2-06b5e612014c" />

Contenido del Dockerfile:

<img width="758" height="179" alt="Screenshot_20260126_113737" src="https://github.com/user-attachments/assets/4f8b9f10-612b-458b-89be-5189269a2193" />

Creamos el nano index.html:

<img width="779" height="170" alt="Screenshot_20260126_113928" src="https://github.com/user-attachments/assets/9214edcf-af98-4fb1-a4d3-6972ad307542" />

Construir imagen:

<img width="884" height="709" alt="Screenshot_20260126_114046" src="https://github.com/user-attachments/assets/c75cc36b-bd81-4a45-ace1-ad25fdc0e4a6" />

Apache 02:

Hacemos un nano Dockerfile y añadimos esas lineas:

<img width="737" height="202" alt="Screenshot_20260126_114559" src="https://github.com/user-attachments/assets/f1811cd8-b69f-42cd-a7d5-82d4dbbe761c" />

Hacemos un nano index.html y añadimos esta frase:

<img width="729" height="149" alt="Screenshot_20260126_114407" src="https://github.com/user-attachments/assets/2ce6e9c5-7767-4cba-a50d-32dc50d3b993" />

Construir imagen:

<img width="888" height="424" alt="Screenshot_20260126_114640" src="https://github.com/user-attachments/assets/74721e62-b029-4775-a845-5b1d4ccca154" />

HAProxy:

Dentro de haproxy hacemos un nano Dockerfile y añadimos estas lienas:

<img width="722" height="161" alt="Screenshot_20260126_115132" src="https://github.com/user-attachments/assets/ef44138e-928c-4255-a1f4-8e56412d1ca1" />

Hacemos un nano haproxy.cfg y dentro añadimos estas lineas:

<img width="855" height="456" alt="Screenshot_20260126_115832" src="https://github.com/user-attachments/assets/3705d54a-1e30-4410-ae25-de7d69a7a8d3" />

Construir imagen:

<img width="894" height="689" alt="Screenshot_20260126_120001" src="https://github.com/user-attachments/assets/b456ae06-2873-4bde-bb1f-3bf7bfa272d3" />

Crear red Docker:

<img width="873" height="65" alt="Screenshot_20260126_120316" src="https://github.com/user-attachments/assets/852f22c6-7452-4870-8891-360577f3d1bd" />

Crear contenedores Apache:

<img width="891" height="140" alt="Screenshot_20260126_120520" src="https://github.com/user-attachments/assets/afb74d76-3e94-4088-b8b1-47be4a27b761" />

Comprobar:

<img width="895" height="262" alt="Screenshot_20260126_120548" src="https://github.com/user-attachments/assets/27d7face-e3a0-4ec6-84e6-14238b851521" />

Crear contenedor HAProxy:

<img width="885" height="101" alt="Screenshot_20260126_122101" src="https://github.com/user-attachments/assets/bd8c99eb-ef42-4e6b-958e-46b9360f891a" />

En el navegador del Ubuntu:

<img width="923" height="381" alt="Screenshot_20260126_122019" src="https://github.com/user-attachments/assets/3526b142-d642-4842-bbab-899dade8a89e" />

Apache usando volumen compartido crear imagen con volumen inicial:

<img width="724" height="144" alt="Screenshot_20260126_122255" src="https://github.com/user-attachments/assets/7f24b177-df6a-4ac9-be11-5e7e7ff27543" />

Ahora hacemos un nano index.html y añadimos la siguiente linea:

<img width="824" height="222" alt="Screenshot_20260126_122421" src="https://github.com/user-attachments/assets/a0b76c94-efc7-479b-82f3-ee1f0fe967d1" />

Comprobamos:

<img width="894" height="260" alt="Screenshot_20260126_122533" src="https://github.com/user-attachments/assets/a65830fa-6028-4f1e-b9f5-dfe62c7173a3" />

Eliminar contenedores antiguos:

<img width="858" height="132" alt="Screenshot_20260126_122658" src="https://github.com/user-attachments/assets/3a2ad0f7-166b-4ebe-a765-5ae35c2cdfde" />

Crear contenedores con volumen:

<img width="895" height="84" alt="Screenshot_20260126_122822" src="https://github.com/user-attachments/assets/639b8b58-5569-48a9-a25b-5e386aa0f16f" />

<img width="889" height="80" alt="Screenshot_20260126_122922" src="https://github.com/user-attachments/assets/63221843-bcd8-4cdc-9c88-f5e2ed3a4081" />

Comprobación final:

<img width="928" height="354" alt="Screenshot_20260126_123015" src="https://github.com/user-attachments/assets/30f0546e-d335-47cf-916d-3c34f50f6373" />
