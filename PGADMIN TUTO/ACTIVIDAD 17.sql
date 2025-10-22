DROP TABLE IF EXISTS alumnos;

CREATE TABLE alumnos(
  apellido VARCHAR (30),
  nombre VARCHAR (30),
  documento CHAR(8),
  domicilio VARCHAR(30),
  fechaingreso DATE,
  fechanacimiento DATE
 );

SET datestyle TO 'European';
SET datestyle TO 'European';

INSERT INTO alumnos VALUES ('Gonzalez','Ana','22222222','Colon 123','20-08-1990','15/02/1972');
INSERT INTO alumnos VALUES ('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');
INSERT INTO alumnos VALUES ('Perez','Laura','26666666','Bulnes 345','03-03-91',null);

---error porque lo lee con el formato día, mes y año y no reconoce el mes 15
/*INSERT INTO alumnos VALUES ('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);*/

SELECT * FROM alumnos 
WHERE fechaingreso<'1-1-91';

SELECT * FROM alumnos 
WHERE fechanacimiento IS NULL;