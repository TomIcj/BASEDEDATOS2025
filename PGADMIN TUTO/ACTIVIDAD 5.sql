DROP TABLE IF EXISTS Peliculas; 
CREATE TABLE peliculas(
  titulo VARCHAR(20),
  actor VARCHAR(20),
  duracion INTEGER,
  cantidad INTEGER
 );
 INSERT INTO peliculas (titulo, actor, duracion, cantidad) VALUES ('Mision imposible','Tom Cruise',180,3);
 INSERT INTO peliculas (titulo, actor, duracion, cantidad) VALUES ('Mision imposible 2','Tom Cruise',190,2);
 INSERT INTO peliculas (titulo, actor, duracion, cantidad) VALUES ('Mujer bonita','Julia Roberts',118,3);
 INSERT INTO peliculas (titulo, actor, duracion, cantidad) VALUES ('Elsa y Fred','China Zorrilla',110,2);

 SELECT titulo,actor,duracion,cantidad FROM peliculas

------------------------------------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS empleados; 
CREATE TABLE empleados(
  nombre VARCHAR (20),
  documento VARCHAR (10), 
  sexo VARCHAR (1),
  domicilio VARCHAR (30),
  sueldobasico float
 );
 
 INSERT INTO empleados (nombre, documento, sexo, domicilio, sueldobasico) VALUES ('Juan Juarez','22333444','m','Sarmiento 123','500');
 INSERT INTO empleados (nombre, documento, sexo, domicilio, sueldobasico) VALUES ('Ana Acosta','27888999','f','Colon 134','700');
 INSERT INTO empleados (nombre, documento, sexo, domicilio, sueldobasico) VALUES ('Carlos Caseres','31222333','m','Urquiza 479','850');

 SELECT * FROM empleados;

 SELECT nombre,documento,domicilio,sexo,sueldobasico FROM empleados;




