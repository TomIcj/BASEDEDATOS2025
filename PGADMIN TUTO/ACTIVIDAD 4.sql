 CREATE TABLE peliculas(
  nombre VARCHAR(20),
  actor VARCHAR (30),
  duracion float,
  cantidad float
 );
 
 INSERT INTO peliculas (nombre, actor, duracion, cantidad) VALUES ('Mision imposible','Tom Cruise','128','3');
 INSERT INTO peliculas (nombre, actor, duracion, cantidad) VALUES ('Mision imposible 2','Tom Cruise','130','2');
 INSERT INTO peliculas (nombre, actor, duracion, cantidad) VALUES ('Mujer bonita','Julia Roberts','118','3');
 INSERT INTO peliculas (nombre, actor, duracion, cantidad) VALUES ('Elsa y Fred','China Zorrilla','110','2');

 SELECT * FROM peliculas 

 DROP TABLE peliculas 
 
 CREATE TABLE empleados(
  nombre VARCHAR(20),
  documentos INTEGER,
  sexo VARCHAR (1),
  domicilio VARCHAR (30),
  sueldobasico float  
 );
 INSERT INTO empleados (nombre, documentos, sexo, domicilio, sueldobasico) VALUES ('Juan Perez','22333444','m','Sarmiento 123','500');
 INSERT INTO empleados (nombre, documentos, sexo, domicilio, sueldobasico) VALUES ('Ana Acosta','24555666','f','Colon 134','650');
 INSERT INTO empleados (nombre, documentos, sexo, domicilio, sueldobasico) VALUES ('Bartolome Barrios','27888999','m','Urquiza 479','800');

 SELECT * FROM empleados  

 DROP TABLE empleados 
