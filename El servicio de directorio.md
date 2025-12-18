# El servicio de directorio

# Crear archivo ldif:
Sudo nano pedro.ldif

# Dentro del fichero añadimos estas lineas:
dn: uid=pedro,ou=usuarios,dc=midominio

objectClass: top

objectClass: inetOrgPerson

objectClass: posixAccount

cn: Pedro

sn: Pedro

givenName: Pedro

uid: Pedro

uidNumber: 10001

gidNumber: 10001

homeDirectory: /home/pedro

loginShell: /bin/bash

mail: pedro@gmail.com

# Crear un ldif para agregar una OU:
dn: ou=usuarios,dc=empresa,dc=com
objectClass: top
ou: usuarios

# Importar el archivo LDIF
ldapadd -x -D "cn=pedro,dc=midominio" -W -f pedro.ldif

# Para comprobar que está creado:
ldapsearch -x -b dc=midominio

# Si quiero hacer alguna modificación:
Creamos otro fichero por ejemplo: pedro2.ldif y ponemos el siguiente comando en la terminal:
ldapmodify -x -D "cn=pedro,dc=midominio -W -f pedro2.ldif




