 DROP TABLE IF EXISTS libros;
 
 CREATE TABLE libros(
 codigo serial,
 titulo varchar(40) not null,
 autor varchar(20) default 'Desconocido',
 editorial varchar(20),
 precio decimal(6,2),
 cantidad smallint default 0,
 PRIMARY KEY (codigo)
 );

 INSERT INTO libros (titulo,autor,editorial,precio) VALUES('El aleph','Borges','Emece',25);
 INSERT INTO libros (titulo,autor,editorial,precio,cantidad) VALUES('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
 INSERT INTO libros (titulo,autor,editorial,precio,cantidad) VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

 SELECT titulo, autor,editorial,precio,cantidad,precio*cantidad AS monto_total FROM libros;

 SELECT titulo,autor,precio, precio*0.1 AS descuento,precio-(precio*0.1) AS precio_final FROM libros
 WHERE editorial='Emece';