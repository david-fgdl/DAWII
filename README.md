# README
Primer trabajo: Desarrollo de un portal con registro de usuarios que acceden a un formulario, cuya información, una vez formalizado, se graba en una base de datos.

Por: David Fernández Gutiérrez de Luna.

La tecnología usada para este proyecto fue Ruby on Rails, usando como base de datos MySQL.

Para ejecutar el proyecto es necesario tener:

* Rails version: 6.0.3.5
* Ruby version: 2.6.6

Para poder ejecutar la aplicación en localhost, se necesita ejecutar MySQL en el puerto 3306 mediante XAMPP

--CMD en la carpeta del proyecto--

Inicializar la base de datos:
* (cmd) rails db:create db:migrate 

Inicializar base de datos con valores del seeding:
* (cmd) rails db:seed

Con esto creamos un usuario en la base de datos para tener uno con el que trabajar:
* Nombre: Admin
* email: admin@admin.com
* password: !daw-2

Inicializar proyecto: 
* (cmd) rails s
Se accede mediante navegador web en:
* localhost:3000

Si es la primera vez en ejecutar el proyecto, es probable que se tengan que instalar las gemas específicas para el proyecto: 
* (cmd) bundle install

Código usado:

Partes del código usado ha sido cogido del anterior proyecto de DAW I
Algunos ejemplos de extractos del código son las vistas de las páginas o algunos controladores
* Repositorio: https://github.com/mariarf/DulceCapricho_Server
