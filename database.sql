create database library;
-- \l para ver las bases de datos creadas
-- \c nombreDB para conectarse a una base de datos

create table books (
  section int,
  title text,
  author text
);

-- \dt para ver todas las tablas de la base de datos

insert into books values 
  (2, 'Digital Fortress', 'Dan Brown'),
  (3, 'World War Z', 'Max Brooks');

  create table users (
    username text,
    password text
  );

  insert into users values
    ('joe', 'joe123'),
    ('ryan', 'ryan123'),
    ('cameron', 'cameron123');

-- \q para salir de la conexión con postgres
-- psql -U postgres para conectarse a la shell de postgres

SELECT VERSION();
    PostgreSQL 11.6 (Ubuntu 11.6-1.pgdg18.04+1) on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0, 64-bit
\h -- ayuda
\h comnado -- ayuda del comando especifico
\l -- Listar las bases
\c base de datos --moverse a una base de datos especifica
\dt -- listar las tablas de la base actual
\dn -- listar los esquemas de la base actual
\dv -- listar las vistas
\df -- listar las funciones
\du -- listar los usuarios
\g -- ejecutar ultimo comando 
\s -- historial de comandos
\l nombrearchivo --guardar lista de comandos
\i nombre archivo -- ejecuta comandos guardados
\e -- abrir editor 
\ef -- editor de funciones
\timming -- activar o desactivar el tiempo de respusta de las consultas
\q cerra consola
CREATE DATABASE base; -- crea base
CREATE TABLE tabla (columnas); crea tabla
INSERT INTO tabla(columna) VALUES('dato');
SELECT * FROM tabla;
UPDATE tabla SET cammpo = dato WHERE condicion;
DELETE FROM tabla WHERE condicion;