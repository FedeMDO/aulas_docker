<p align="center">
    <h1 align="center">Aulas Docker Image</h1>
    <br>
</p>

## About

Proyecto de Docker para instalar el Sistema de Gestión de Aulas

Sistema Web de Gestión para el proceso administrativo de asignación de aulas a cursos, comisiones, exámenes finales y eventos especiales en el ámbito de Universidades, Facultades e Institutos, donde la distribución del espacio conlleve una tarea crucial. Proyecto iniciado por estudiantes avanzados de la Universidad Nacional Arturo Jauretche, Buenos Aires, Argentina.


## Setup

    cp .env-dist .env

Editar `.env` con la configuración necesaria.

> **Nota:** Elegir la versión para la combinación de  `DOCKERFILE_FLAVOUR` y `PHP_BASE_IMAGE_VERSION`

> **Setup para Mysql:** Definir el nombre de la base de datos `DB_DATABASE`, la contraseña del usuario root `DB_ROOT_PASSWORD`, el usuario de la base de datos de la aplicación `DB_USER`, la contraseña de el usuario `DB_PASSWORD` y los parámetros de conexión `DB_MYSQL_DSN`.

Ejemplo:

    DB_DATABASE=aulas_db
    DB_ROOT_PASSWORD=root
    DB_USER=aulas_user
    DB_PASSWORD=aulas_pass
    DB_MYSQL_DSN=mysql:host=db;dbname=

## Configuration

- `PHP_ENABLE_XDEBUG` whether to load an enable Xdebug, defaults to `0` (false)
- `PHP_USER_ID` (Debian only) user ID, when running commands as webserver (`www-data`), see also [#15](https://github.com/yiisoft/yii2-docker/issues/15)


## Building

Construir las imágenes

    docker-compose build


## Iniciar contenedores

    docker-compose up -d


## Instalar la aplicación

### Contenedor de aplicación

Ingresar al contenedor de la aplicación

    docker exec -it app bash

> **Nota:** Asegurarse que el nombre del contenedor de la aplicación es `app`

Una vez dentro del contenedor ejecutar las siguientes comandos:

    rm -r -f /app/{.[!.],}*

> **Nota:** Borra el contenido de la carpeta `/app`.

Instalar la aplicación desde el repositorio oficial:

    wget https://github.com/FedeMDO/aulas/archive/master.zip
    unzip master.zip
    mv aulas-master/app/{.[!.],}* /app/
    rm -r -f aulas-master*

Instalar las dependencias con composer:

    composer install

El propietario de la carpeta debe ser el usuario de Apache (`www-data`)

    chown -R www-data:www-data .

Crear el `.env` desde `.env.example` y salir

    cp .env.example .env
    exit

### Contenedor de base de datos

Ingresar al contenedor de base de datos:

    docker exec -it db bash

> **Nota:** Asegurarse que el nombre del contenedor de base de datos es `db`

Instalar la base de datos:

    mysql -p < aulas_db_aws.sql

> **Nota:** La contraseña del usuario `root` esta definida en el archivo de variables de entorno del contenedor `.env`
