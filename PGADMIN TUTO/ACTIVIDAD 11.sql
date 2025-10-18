DROP TABLE IF EXISTS medicamentos;

 CREATE TABLE medicamentos(
  codigo integer NOT NULL,
  nombre varchar(20) NOT NULL,
  laboratorio varchar(20),
  precio float,
  cantidad integer NOT NULL
 );

 INSERT INTO medicamentos (codigo,nombre,laboratorio,precio,cantidad) VALUES (1,'Sertal gotas',NULL,NULL,100); 
 INSERT INTO medicamentos (codigo,nombre,laboratorio,precio,cantidad) VALUES (2,'Sertal compuesto',NULL,8.90,150);
 INSERT INTO medicamentos (codigo,nombre,laboratorio,precio,cantidad) VALUES (3,'Buscapina','Roche',NULL,200);

 SELECT * FROM medicamentos;

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(4,'Bayaspirina','',0,150);

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(0,'','Bayer',15.60,0);

  SELECT * FROM  medicamentos;

-- CONFIRMADO DA ERROR PORQ VIOLA LA RESTRICCIOON DE NO NULO ECHO PREVIAMENTE EN LA CREACION DE LA TABLA
 /*INSERT INTO medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  VALUES (NULL,'Amoxidal jarabe','Bayer',25,120);*/

  SELECT * FROM  medicamentos
  WHERE laboratorio is null;

  SELECT * FROM  medicamentos
  WHERE laboratorio='';

  SELECT * FROM  medicamentos
  WHERE precio is null;

  SELECT * FROM  medicamentos
  WHERE precio=0;

  SELECT * FROM  medicamentos
  WHERE laboratorio<>'';

  SELECT * FROM  medicamentos
  WHERE laboratorio is not null;

 SELECT * FROM  medicamentos
  WHERE precio<>0;

 SELECT * FROM  medicamentos
  WHERE precio is not null;

 -------------------------------------------------------------------------------------------------------------------------------------------

 DROP TABLE IF EXISTS peliculas;

 CREATE TABLE peliculas(
  codigo int not null,
  titulo varchar(40) not null,
  actor varchar(20),
  duracion int
 );
 
 INSERT INTO peliculas (codigo,titulo,actor,duracion) VALUES (1,'Mision imposible','Tom Cruise',120);
 INSERT INTO peliculas (codigo,titulo,actor,duracion) VALUES (2,'Harry Potter y la piedra filosofal',null,180);
 INSERT INTO peliculas (codigo,titulo,actor,duracion) VALUES (3,'Harry Potter y la camara secreta','Daniel R.',null);
 INSERT INTO peliculas (codigo,titulo,actor,duracion) VALUES (0,'Mision imposible 2','',150);
 INSERT INTO peliculas (codigo,titulo,actor,duracion) VALUES (4,'','L. Di Caprio',220);
 INSERT INTO peliculas (codigo,titulo,actor,duracion) VALUES (5,'Mujer bonita','R. Gere-J. Roberts',0);

 SELECT * FROM peliculas;
 
 /*CONFIRMADO DA ERROR PORQ VIOLA LA RESTRICCIOON DE NO NULO ECHO PREVIAMENTE EN LA CREACION DE LA TABLA
 insert into peliculas (codigo,titulo,actor,duracion) values(null,'Mujer bonita','R. Gere-J. Roberts',190);*/

 SELECT * FROM peliculas
 WHERE actor is null;

 UPDATE peliculas SET duracion=120 WHERE duracion is null;

 UPDATE peliculas SET actor='Desconocido'
 WHERE actor='';

 SELECT * FROM peliculas;

 DELETE FROM peliculas
 WHERE titulo='';

 SELECT * FROM peliculas;