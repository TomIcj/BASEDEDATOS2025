CREATE TABLE agenda(
  apellido VARCHAR (30),
  nombre VARCHAR (20),
  domicilio VARCHAR(30),
  telefono FLOAT
 );
 INSERT INTO agenda (apellido, nombre, domicilio, telefono)  VALUES ('Moreno','Alberto','Colon 123','4234567');
 INSERT INTO agenda (apellido,nombre, domicilio, telefono)  VALUES ('Torres','Juan','Avellaneda 135','4458787');
 
 SELECT * FROM agenda 

 DROP TABLE agenda 

 CREATE TABLE libros(
  titulo VARCHAR(20),
  autor VARCHAR (30),
  editorial VARCHAR (15)
 );
 
 INSERT INTO libros (titulo,autor,editorial) VALUES ('El aleph','Borges','Planeta');
 INSERT INTO libros (titulo,autor,editorial) VALUES ('Martin Fierro','Jose Hernandez','Emece');
 INSERT INTO libros (titulo,autor,editorial) VALUES ('Aprenda PHP','Mario Molina','Emece')
 
 SELECT * FROM libros 

 DROP TABLE libros


 