 DROP TABLE IF EXISTS agenda;

 CREATE TABLE agenda (
  apellido VARCHAR(30),
  nombre VARCHAR(20),
  domicilio VARCHAR(30),
  telefono INTEGER
 );

 INSERT INTO agenda(apellido,nombre,domicilio,telefono) VALUES ('Acosta', 'Ana', 'Colon 123', '4234567');
 INSERT INTO agenda(apellido,nombre,domicilio,telefono) VALUES ('Bustamante', 'Betina', 'Avellaneda 135', '4458787');
 INSERT INTO agenda(apellido,nombre,domicilio,telefono) VALUES ('Lopez', 'Hector', 'Salta 545', '4887788'); 
 INSERT INTO agenda(apellido,nombre,domicilio,telefono) VALUES ('Lopez', 'Luis', 'Urquiza 333', '4545454');
 INSERT INTO agenda(apellido,nombre,domicilio,telefono) VALUES ('Lopez', 'Marisa', 'Urquiza 333', '4545454');

 SELECT * FROM agenda;

 SELECT * FROM agenda
  WHERE nombre='Marisa';

 SELECT nombre,domicilio FROM agenda
  WHERE apellido='Lopez';

 SELECT nombre FROM agenda
  WHERE telefono='4545454';
----------------------------------------------------------------------------------------------------------------
 DROP TABLE IF EXISTS libros;

 CREATE TABLE libros (
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15)
 );

 INSERT INTO libros(titulo,autor,editorial) VALUES ('El aleph','Borges','Emece');
 INSERT INTO libros(titulo,autor,editorial) VALUES ('Martin Fierro','Jose Hernandez','Emece');
 INSERT INTO libros(titulo,autor,editorial) VALUES ('Martin Fierro','Jose Hernandez','Planeta');
 INSERT INTO libros(titulo,autor,editorial) VALUES ('Aprenda PHP','Mario Molina','Siglo XXI');

 SELECT * FROM libros
  WHERE autor='Borges';

 SELECT titulo FROM libros
  WHERE editorial='Emece';

 SELECT editorial FROM libros
  WHERE titulo='Martin Fierro';