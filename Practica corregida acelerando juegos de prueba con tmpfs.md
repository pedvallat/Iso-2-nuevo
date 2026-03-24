# Practica acelerando juegos de prueba con tmpfs

Preparamos el fichero de base de datos:

<img width="597" height="64" alt="Screenshot_20260324_114559" src="https://github.com/user-attachments/assets/94e1155a-3bd1-47a6-8266-14c21c73b370" />

Dentro del nano dump.sql pegamos este sql:

<img width="924" height="662" alt="Screenshot_20260324_114924" src="https://github.com/user-attachments/assets/c835634b-220f-4040-9a40-9079658363b9" />

Creamos un contenedor sin tmpfs:

<img width="931" height="94" alt="Screenshot_20260324_115251" src="https://github.com/user-attachments/assets/6608ce5b-27c3-4bd9-a53b-17625a5969a6" />

Creamos un contenedor con tmpfs:

<img width="931" height="123" alt="Screenshot_20260324_115614" src="https://github.com/user-attachments/assets/d6b67f03-2652-4d5c-97f6-1517418d0128" />

Entrar en los contenedores:

Sin tmpfs:

<img width="739" height="54" alt="Screenshot_20260324_115931" src="https://github.com/user-attachments/assets/dce40614-9904-45c2-84ea-9e3a9da22ba7" />

Con tmpfs:

<img width="793" height="56" alt="Screenshot_20260324_120019" src="https://github.com/user-attachments/assets/381372f3-ed53-42d2-a641-a94d6874672e" />

Probar rendimiento:

Con tmpfs:

<img width="607" height="79" alt="Screenshot_20260324_120457" src="https://github.com/user-attachments/assets/bf738183-a8e5-4544-a56e-cc99eef90f9c" />

<img width="934" height="910" alt="Screenshot_20260324_120552" src="https://github.com/user-attachments/assets/721fda4f-cca4-4db6-8ea9-db8057b6e66a" />

Sin tmpfs:

<img width="648" height="140" alt="Screenshot_20260324_120711" src="https://github.com/user-attachments/assets/ce538c3d-8e2c-45d4-8a17-7bc7359fd39b" />

<img width="928" height="904" alt="Screenshot_20260324_120752" src="https://github.com/user-attachments/assets/38ea44b4-7abc-4d83-be77-601acf19120a" />

Paramos contenedores:

<img width="696" height="109" alt="Screenshot_20260324_120909" src="https://github.com/user-attachments/assets/72beea7d-3e11-439b-a000-8e82e51ee5e5" />
