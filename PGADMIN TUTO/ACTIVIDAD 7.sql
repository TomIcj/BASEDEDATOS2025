DROP TABLE IF EXISTS articulos;

 CREATE TABLE articulos(
  codigo integer,
  nombre varchar(20),
  descripcion varchar(30),
  precio float,
  cantidad integer
 );

 INSERT INTO articulos (codigo, nombre, descripcion, precio,cantidad) VALUES (1,'impresora','Epson Stylus C45',400.80,20);
 INSERT INTO articulos (codigo, nombre, descripcion, precio,cantidad) VALUES (2,'impresora','Epson Stylus C85',500,30);
 INSERT INTO articulos (codigo, nombre, descripcion, precio,cantidad) VALUES (3,'monitor','Samsung 14',800,10);
 INSERT INTO articulos (codigo, nombre, descripcion, precio,cantidad) VALUES (4,'teclado','ingles Biswal',100,50);
 INSERT INTO articulos (codigo, nombre, descripcion, precio,cantidad) VALUES (5,'teclado','español Biswal',90,50);

 SELECT * FROM articulos
  WHERE nombre='impresora';

 SELECT * FROM articulos
  WHERE precio>=400;

 SELECT codigo,nombre
  FROM articulos
  WHERE cantidad<30;

 SELECT nombre, descripcion
  FROM articulos
  WHERE precio<>100;

  ------------------------------------------------------------------------------------------------------------------------------------

 DROP TABLE IF EXISTS peliculas;

 CREATE TABLE peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

 INSERT INTO peliculas (titulo, actor, duracion, cantidad) VALUES ('Mision imposible','Tom Cruise',120,3);
 INSERT INTO peliculas (titulo, actor, duracion, cantidad) VALUES ('Mision imposible 2','Tom Cruise',180,4);
 INSERT INTO peliculas (titulo, actor, duracion, cantidad) VALUES ('Mujer bonita','Julia R.',90,1);
 INSERT INTO peliculas (titulo, actor, duracion, cantidad) VALUES ('Elsa y Fred','China Zorrilla',80,2);

 SELECT * FROM peliculas
  WHERE duracion<=90;

 SELECT * FROM peliculas
  WHERE actor<>'Tom Cruise';

 SELECT titulo,actor,cantidad
  FROM peliculas
  WHERE cantidad >2;