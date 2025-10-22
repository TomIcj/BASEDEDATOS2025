DROP TABLE IF EXISTS autos;

CREATE TABLE autos(
patente CHAR (6),
marca VARCHAR (20),
modelo CHAR (4),
precio FLOAT,
primary key (patente)
);

/*Hemos definido el campo "patente" de tipo "char" y no "varchar" porque la cadena de caracteres 
iempre tendrá la misma longitud (6 caracteres). Lo mismo sucede con el campo "modelo", en el cual 
almacenaremos el año, necesitamos 4 caracteres fijos.*/

INSERT INTO autos VALUES ('ACD123','Fiat 128','1970',15000);
INSERT INTO autos VALUES ('ACG234','Renault 11','1990',40000);
INSERT INTO autos VALUES ('BCD333','Peugeot 505','1990',80000);
INSERT INTO autos VALUES ('GCD123','Renault Clio','1990',70000);
INSERT INTO autos VALUES ('BCC333','Renault Megane','1998',95000);
INSERT INTO autos VALUES ('BVF543','Fiat 128','1975',20000);

SELECT * FROM autos 
WHERE modelo= '1990';

DROP TABLE autos;

CREATE TABLE autos(
patente CHARACTER (6),
marca CHARACTER VARYING (20),
modelo CHARACTER (4),
precio FLOAT,
primary key (patente)
);

INSERT INTO autos VALUES ('ACD123','Fiat 128','1970',15000);

SELECT * FROM autos

-----------------------------------------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes(
documento CHAR(8),
apellido VARCHAR(20),
nombre VARCHAR(20),
domicilio VARCHAR(30),
telefono VARCHAR (11) NULL
);

INSERT INTO clientes (documento,apellido,nombre,domicilio,telefono) VALUES ('2233344','Perez','Juan','Sarmiento 980','4342345');
INSERT INTO clientes (documento,apellido,nombre,domicilio,telefono) VALUES ('2333344','Perez','Ana','Colon 234',NULL);
INSERT INTO clientes (documento,apellido,nombre,domicilio,telefono) VALUES ('2433344','Garcia','Luis','Avellaneda 1454','4558877');
INSERT INTO clientes (documento,apellido,nombre,domicilio,telefono) VALUES ('2533344','Juarez','Ana','Urquiza 444','4789900');

SELECT * FROM clientes
WHERE apellido='Perez';
