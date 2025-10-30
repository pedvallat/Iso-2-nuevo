# Entorno de trabajo server y cliente

He puesto adaptador puente en las dos maquinas.

<img width="621" height="336" alt="Screenshot_20251023_111108" src="https://github.com/user-attachments/assets/b2587d41-0977-4a66-b3c6-dc74f93058d4" />
<img width="901" height="497" alt="Screenshot_20251023_111212" src="https://github.com/user-attachments/assets/f5647cf4-29a0-4c69-9635-9644383d9f5f" />

Despues con un nano /etc/network/interfaces he puesto la configuracion en cada maquina.

Servidor:
<img width="843" height="372" alt="Screenshot_20251023_111418" src="https://github.com/user-attachments/assets/cbd2d361-df38-44c6-913b-f5e66f3eb527" />

Cliente:
<img width="841" height="313" alt="Screenshot_20251023_111510" src="https://github.com/user-attachments/assets/718c5543-292e-4148-bc85-badeed949f43" />

Hacemos un ping para ver la conectividad:
<img width="813" height="195" alt="Screenshot_20251023_111642" src="https://github.com/user-attachments/assets/9af6edb2-bfb2-49e8-8767-31c9342fe055" />

Vemos como esta activo el ssh:
Cliente
<img width="717" height="303" alt="Screenshot_20251023_111907" src="https://github.com/user-attachments/assets/831cb027-72e9-4c0f-9b1e-47d05538f0c8" />

Servidor:
<img width="870" height="348" alt="Screenshot_20251023_111817" src="https://github.com/user-attachments/assets/89a5e745-5068-46cd-888a-0321231b3a0e" />

Nos conetamos desde el cliente al server
<img width="747" height="433" alt="Screenshot_20251023_112120" src="https://github.com/user-attachments/assets/7f7a9560-debd-4fec-ae32-45bc8c638f86" />

Instalamos telnet:
<img width="958" height="350" alt="Screenshot_20251027_082008" src="https://github.com/user-attachments/assets/8c68f3bc-7b39-48c7-bde0-ac36155b97f1" />

Comprobamos que funciona:
<img width="751" height="528" alt="Screenshot_20251027_090236" src="https://github.com/user-attachments/assets/89f63163-1c21-49fc-bcb8-f124c2a0054c" />

Para restringir el acceso remoto a través de SSH a ciertos usuarios y añadimos esta linea:
<img width="938" height="827" alt="Screenshot_20251030_090521" src="https://github.com/user-attachments/assets/45379d1e-9971-41f6-98cd-d2b3c92db54a" />

Añadamos la siguiente línea para denegar el acceso a cualquier equipo no autorizado: 
<img width="833" height="261" alt="Screenshot_20251030_090705" src="https://github.com/user-attachments/assets/e83e1d97-88f6-4473-a899-14c11e6ac36c" />

Añadimos la siguiente línea para definir específicamente el equipo que puede acceder a él:
<img width="845" height="218" alt="Screenshot_20251030_091654" src="https://github.com/user-attachments/assets/cc5e836a-ecfa-4b96-9524-bd1f8fe70cca" />

Recuerde que para que los cambios surtan efecto, el servicio debe ser reiniciado: 
<img width="480" height="48" alt="Screenshot_20251030_091742" src="https://github.com/user-attachments/assets/a755f902-cb27-40f8-b8a3-9329f9b658e6" />

Podemos ir a la máquina cliente, configurar la sesión remota e iniciar el navegador con el pedido:

<img width="469" height="111" alt="Screenshot_20251030_093046" src="https://github.com/user-attachments/assets/8e3fe73f-de87-47f9-8121-f048d7a1375a" />

No me deja hacer este comando y a partir de aqui no puede seguir la practica.
