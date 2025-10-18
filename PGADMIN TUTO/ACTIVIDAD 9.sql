DROP TABLE IF EXISTS agenda;

 CREATE TABLE agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 INSERT INTO agenda (apellido,nombre,domicilio,telefono) VALUES ('Acosta','Alberto','Colon 123','4234567');
 INSERT INTO agenda (apellido,nombre,domicilio,telefono) VALUES ('Juarez','Juan','Avellaneda 135','4458787');
 INSERT INTO agenda (apellido,nombre,domicilio,telefono) VALUES ('Lopez','Maria','Urquiza 333','4545454');
 INSERT INTO agenda (apellido,nombre,domicilio,telefono) VALUES ('Lopez','Jose','Urquiza 333','4545454');
 INSERT INTO agenda (apellido,nombre,domicilio,telefono) VALUES ('Suarez','Susana','Gral. Paz 1234','4123456');

 SELECT * FROM agenda;

 UPDATE agenda SET nombre='Juan Jose'
  WHERE nombre='Juan';

 SELECT * FROM agenda;

 UPDATE agenda SET telefono='4445566'
  WHERE telefono='4545454';

 SELECT * FROM agenda;

 UPDATE agenda SET nombre='Juan Jose'
  WHERE nombre='Juan';

 SELECT * FROM agenda;

 ------------------------------------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS libros;

 CREATE TABLE libros (
  titulo varchar(30),
  autor varchar(20),
  editorial varchar(15),
  precio float
 );

 INSERT INTO libros (titulo, autor, editorial, precio) VALUES ('El aleph','Borges','Emece',25.00);
 INSERT INTO libros (titulo, autor, editorial, precio) VALUES ('Martin Fierro','Jose Hernandez','Planeta',35.50);
 INSERT INTO libros (titulo, autor, editorial, precio) VALUES ('Aprenda PHP','Mario Molina','Emece',45.50);
 INSERT INTO libros (titulo, autor, editorial, precio) VALUES ('Cervantes y el quijote','Borges','Emece',25);
 INSERT INTO libros (titulo, autor, editorial, precio) VALUES ('Matematica estas ahi','Paenza','Siglo XXI',15);

 SELECT * FROM libros;

 UPDATE libros SET autor='Adrian Paenza'
  WHERE autor='Paenza';

 SELECT * FROM libros;

 UPDATE libros SET autor='Adrian Paenza'
  WHERE autor='Paenza';

 SELECT * FROM libros;

 UPDATE libros SET precio=27
 WHERE autor='Mario Molina';

 SELECT * FROM libros;

 UPDATE libros SET editorial='Emece S.A.'
  WHERE editorial='Emece';

 SELECT * FROM libros;
