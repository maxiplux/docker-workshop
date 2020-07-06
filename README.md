### Código usado para la charla sobre introducción a Docker y Docker compose

Se crea el archivo docker-compose.yml para crear tres contenedores, así:

- Uno para un mini aplicativo web con Apache 2 y PHP 5.4
- Uno para la base de datos, usando MySql 5.7
- Uno para el uso de PhpMyAdmin

Instrucciones para Mac Os o Linux. En Windows, podrían variar los comandos.

### :cloud: Clonando el proyecto desde Github

```bash
# Desde la terminal
cd ~/ruta-instalacion/
# Para Git 2.13 o superior
git clone https://github.com/perritodlp/docker-workshop.git
```

### :construction: Instalación del ambiente del proyecto


```bash
# Es necesario tener Docker instalado, incluyendo la opción Docker-compose
Instalar Docker, de acuerdo al sistema operativo usado.
# Cambiarse a la ruta
cd ~/ruta-instalacion/
# Estando allí, ejecutar Docker-compose y esperar a que se instale todo lo necesario
docker-compose up -d
```

### :alien: Visualización de la prueba 
```bash
# Se puede usar el proyecto sin necesidad del host virtual, así:
http://localhost:8086/
# Para usarlo con el hosts virtual, es necesario editar y modificar 
# el archivo /etc/hosts para agregar:
vi /etc/hosts
# Adicionar en alguna parte:
127.0.0.1 docker-compose.local
# Abrir una pestaña de navegador, abrir la siguiente dirección y probar:
http://docker-compose.local:8045/
# Usando PhpMyAdmin, verificar la base de datos evertec con cuatro tablas, así:
http://localhost:8046/
usuario: ecommerce
contraseña: 3c0mm3rc3
```

### :construction_worker: Espero que todo funcione bien!! :fire: 