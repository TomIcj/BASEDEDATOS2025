DROP TABLE IF EXISTS alumnos;

CREATE TABLE alumnos(
apellido varchar(30),
nombre varchar(30),
documento char(8),
domicilio varchar(30),
fechaingreso date,
fechanacimiento date
);

SET datestyle TO 'European';

INSERT INTO alumnos VALUES ('Cejas','Tomas','22222222','Colon 123','10-08-1990','15/02/1972');
INSERT INTO alumnos VALUES ('Lopez','Facundo','25555555','Sucre 456','03-03-1991','15/02/1972');
INSERT INTO alumnos VALUES ('Morgan','Luis','26666666','Bulnes 345','03-03-91',null);

SELECT * FROM alumnos 
WHERE fechanacimiento is null;

SELECT apellido,nombre,extract(year from fechanacimiento) from alumnos;
