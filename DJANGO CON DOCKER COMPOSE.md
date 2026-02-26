# DJANGO CON DOCKER COMPOSE

Preparar el entorno:

<img width="519" height="19" alt="Screenshot_20260226_092525" src="https://github.com/user-attachments/assets/da04f278-a4ec-4db5-813a-84dd90eed026" />

<img width="860" height="317" alt="Screenshot_20260226_092605" src="https://github.com/user-attachments/assets/010e4aa1-03b0-4844-9f80-918df9fc4c73" />

<img width="827" height="122" alt="Screenshot_20260226_092754" src="https://github.com/user-attachments/assets/1fb48607-7d96-4010-bb74-6f23442499c6" />

<img width="625" height="73" alt="Screenshot_20260226_092818" src="https://github.com/user-attachments/assets/1122a497-d517-45b9-ab42-5ccde1edb581" />

Crear requirements.txt:

<img width="724" height="197" alt="Screenshot_20260226_092906" src="https://github.com/user-attachments/assets/1acc2543-946a-4d88-94fc-55e51453a183" />

Y dentro se añade estas dos lineas:

<img width="781" height="268" alt="Screenshot_20260226_092949" src="https://github.com/user-attachments/assets/862920e1-27f6-467d-9656-b241a36d2879" />

Crear el Dockerfile y dentro poner esto:

<img width="657" height="202" alt="Screenshot_20260226_093044" src="https://github.com/user-attachments/assets/12716b90-71cf-414f-9a9f-ccaf6d284f72" />

Crear el docker-compose.yml

<img width="767" height="258" alt="Screenshot_20260226_093318" src="https://github.com/user-attachments/assets/26af8f1a-5c07-468c-83cc-a73f30f455a3" />

Dentro se añade esto:

<img width="880" height="402" alt="Screenshot_20260226_093445" src="https://github.com/user-attachments/assets/151e80d0-bf7e-4c31-ae84-084adbb0da2c" />

Construir la imagen de Django:

<img width="810" height="258" alt="Screenshot_20260226_093737" src="https://github.com/user-attachments/assets/dd18a285-b85b-4f0a-b64f-9205548511ad" />

Levantar la base de datos:

<img width="851" height="265" alt="Screenshot_20260226_093647" src="https://github.com/user-attachments/assets/c5f1cc02-2b6a-42ae-afd7-606700964720" />

Crear proyecto Django dentro del contenedor:

<img width="880" height="108" alt="Screenshot_20260226_093951" src="https://github.com/user-attachments/assets/0ff620d9-e670-4826-b333-62eec0e8fc59" />

Corregir permisos:

<img width="747" height="66" alt="Screenshot_20260226_094109" src="https://github.com/user-attachments/assets/e3ffe82e-3c1d-4c43-80ac-6f393873a639" />

Configurar PostgreSQL en Django

<img width="761" height="37" alt="Screenshot_20260226_094214" src="https://github.com/user-attachments/assets/47c0edfc-b2a6-473f-bfbd-1bf7d6c1ba3b" />

Buscar:

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
      }
  }

  Reemplazarlo por:

<img width="569" height="205" alt="Screenshot_20260226_094501" src="https://github.com/user-attachments/assets/a9e7e4b0-04da-4723-9518-b6893af9023c" />

Levantar contenedor web:

<img width="871" height="190" alt="Screenshot_20260226_094653" src="https://github.com/user-attachments/assets/ced15260-ab70-4bda-acae-9bdb3d262c63" />

Comprobación:

<img width="885" height="148" alt="Screenshot_20260226_094800" src="https://github.com/user-attachments/assets/75563993-7aba-42b9-83ea-f8739a7edc4d" />

Ahora iriamos a el navegador y pondriamos http://localhost:8000 pero me sale error y no puedo progresar en la practica
