DROP TABLE IF EXISTS medicamentos;

CREATE TABLE medicamentos(
codigo SERIAL,
nombre VARCHAR (20),
laboratorio VARCHAR (20),
precio FLOAT,
cantidad INTEGER,
PRIMARY KEY (codigo)
);

---NOTA: ES TEMA DE SERIAL NO SE PONE NADA PORQ EL CODIGO ENTIENDE Q ARRANCA DEL 1 Y VA SUMANDO
INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad) VALUES ('Sertal','Roche',5.2,100);
INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad) VALUES ('Buscapina','Roche',4.10,200);
INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad) VALUES ('Amoxidal 500','Bayer',15.60,100);

SELECT * FROM medicamentos;

----------------------------------------------------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS peliculas;

CREATE TABLE peliculas (
codigo SERIAL,
titulo VARCHAR(40),
actor VARCHAR (20),
duracion INTEGER,
PRIMARY KEY (codigo)
);

INSERT INTO peliculas (titulo,actor,duracion) VALUES ('Mision imposible','Tom Cruise',120);
INSERT INTO peliculas (titulo,actor,duracion) VALUES ('Harry Potter y la piedra filosofal','xxx',180);
INSERT INTO peliculas (titulo,actor,duracion) VALUES ('Harry Potter y la camara secreta','xxx',190);
INSERT INTO peliculas (titulo,actor,duracion) VALUES ('Mision imposible 2','Tom Cruise',120);
INSERT INTO peliculas (titulo,actor,duracion) VALUES ('La vida es bella','zzz',220);

SELECT * FROM PELICULAS  

UPDATE peliculas SET actor='Daniel R.' 
WHERE codigo=3;

DELETE FROM peliculas 
WHERE titulo='La vida es bella';

DELETE FROM peliculas
WHERE duracion = 120;

SELECT * FROM PELICULAS  

---ESTO ES PARA DETALLAR QUE SI SE BORRA UN CAMPO Y SE AGREGA UNO NUEVO ESTE EMPIESA DESDE EL ULTIMO VALOR REGISTRADO 
INSERT INTO peliculas (titulo,actor,duracion) VALUES ('Mujer bonita','Richard Gere',120);