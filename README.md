# App IntelCost - Suplos
Esta es una app de IntelCost que comtempla funciones como.

- Listado, guardado y eliminado de bienes en una Base de datos **Mysql**.
- Filtrado de bienes segun **ciudad**, **tipo** y **precio**.
- Generación de reportes en Excel, según datos guardados por el usuario.

### 1.- Requisitos y Herramientas.

Esta aplicación fue contstruida bajo:

1. XAMPP
1. Php 8.
1. Mysql.
1. Jquery.
1. JS (ES Modules).

### 2.- Pasos para ejecución.

Tener en cuenta los requisitos previamente mencionados para la ejecución.

- Primero: Hacer un fork o clon de este repositorio.
```
    git clone  https://github.com/Juan1307/AppIntelCost.git  php-suplos
```
    Tener en cuenta que debe ser un entorno en donde se pueda ejecutar php

- Segundo: Ir a la carpeta ```/php-suplos``` y ejecutar el siguiente comando.
```
    php -S localhost:3000
```

- Tercero: Importar la base de datos en PhpmyAdmin, que se encuentra en la carpeta ```/bd/intelcost_bienes.sql``` luego en PhpMyAdmin.
```
    +nueva // nombre una base de datos 'intelcost_bienes' sin comillas.
    +nueva > importar // seleccione el archivo de la carpeta previamente mencionada.
```

- Recuerda iniciar las funciones de **Apache** y **Mysql** en el panel de XAMPP.

Esta app se base en la platilla de SuplosBackenf [++REF-PLANTILLA++](https://github.com/nboadam/suplosBackEnd).