DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
codigo INT NOT NULL,
titulo VARCHAR (40) NOT NULL,
autor VARCHAR (20),
editorial VARCHAR(20),
PRIMARY KEY (codigo)
);

INSERT INTO libros (codigo,titulo,autor,editorial) VALUES (1,'El aleph','Borges','Emece');
INSERT INTO libros (codigo,titulo,autor,editorial) VALUES (2,'Martin Fierro','Jose Hernandez','Planeta');
INSERT INTO libros (codigo,titulo,autor,editorial) VALUES (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

SELECT * FROM libros


---ESTA LINEA DE CODIGO DA ERROR CORRECTAMENTE YA QUE NO SE PUEDE DUPLICAR UNA LLAVE 
/*INSERT INTO libros (codigo,titulo,autor,editorial) VALUES (2,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');*/

---DA ERROR CORRECTAMENTE PORQ NO SE PUEDE PONER EL VALOR NULO EN UNA KEY
/*INSERT INTO libros (codigo,titulo,autor,editorial) VALUES (null,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');*/

---DA ERROR CORRECTAMENTE YA QUE NO SE PUEDE PONER UNA LLAVE Q YA EXISTE
/*UPDATE libros SET codigo=1
  WHERE titulo='Martin Fierro';*/

----------------------------------------------------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS alumnos;

---NO SE PUEDE TENER 2 PRIMARY KEY
/*CREATE TABLE alumnos(
legajo VARCHAR (4) NOT NULL,
documento VARCHAR (8),
nombre VARCHAR (30),
domicilio VARCHAR (30),
PRIMARY KEY(documento),
PRIMARY KEY(legajo)
);*/

CREATE TABLE alumnos(
legajo VARCHAR (4) NOT NULL,
documento VARCHAR (8),
nombre VARCHAR (30),
domicilio VARCHAR (30),
PRIMARY KEY(documento)
);

SELECT TABLE_NAME,COLUMN_NAME,udt_name,character_maximum_length,is_nullable 
FROM information_schema.columns 
WHERE TABLE_NAME = 'alumnos';

INSERT INTO alumnos (legajo,documento,nombre,domicilio) VALUES ('A233','22345345','Perez Mariana','Colon 234');
INSERT INTO alumnos (legajo,documento,nombre,domicilio) VALUES ('A567','23545345','Morales Marcos','Avellaneda 348');

SELECT * FROM alumnos

---DA ERROR POR QUE NO SE PUEDE PONER UNA KEY YA EXISTENTE 
/*INSERT INTO alumnos (legajo,documento,nombre,domicilio) VALUES ('A642','23545345','Gonzalez Analia','Caseros 444');*/

---DA ERROR NO PUEDE PONER UNA VALOR NULO EN UNA KEY 
/*INSERT INTO alumnos (legajo,documento,nombre,domicilio) VALUES ('A685',null,'Miranda Carmen','Uspallata 999');*/
