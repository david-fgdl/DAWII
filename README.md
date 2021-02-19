# README

* Rails version: 6.0.3.5

* Ruby version: 2.6.6

* System dependencies

* Configuration

* Database creation

* Database initialization

Para poder ejecutar la aplicación en localhost, se necesita ejecutar MySQL en el puerto 3306 mediante XAMPP

En el archivo database.yml dentro de la carpeta de "config" se debe especificar el username y la contraseña, además del host y el puerto en el que estará alojada la base de datos para que se pueda conectar.

--CMD en la carpeta del proyecto--

Inicializar la base de datos:(cmd) rails db:create db:migrate 

Inicializar base de datos con valores del seeding:(cmd) "rails db:seed"
Con esto creamos un usuario en la base de datos para tener uno con el que trabajar:
Nombre: Admin
email: admin@admin.com
password: !daw-2

Inicializar proyecto: (cmd) rails s

Si es la primera vez en ejecutar el proyecto, es probable que se tengan que instalar las gemas específicas para el proyecto: 
(cmd) bundle install

* Código usado:
Partes del código usado ha sido cogido del anterior proyecto de DAW I
Repositorio: https://github.com/mariarf/DulceCapricho_Server