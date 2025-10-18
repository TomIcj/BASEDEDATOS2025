-- CREAMOS LA TABLA AGENDA

CREATE TABLE agenda(
  apellido VARCHAR (30),
  nombre VARCHAR (20),
  domicilio VARCHAR(30),
  telefono FLOAT
 );
 
 SELECT * FROM public.agenda

 CREATE TABLE libros(
  titulo VARCHAR(20),
  autor VARCHAR (30),
  editorial VARCHAR (15)
 );

 DROP TABLE agenda 
 
 DROP TABLE libros 
