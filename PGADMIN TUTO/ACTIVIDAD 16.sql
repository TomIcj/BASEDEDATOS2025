DROP TABLE IF EXISTS cuentas;

CREATE TABLE cuentas(
numero INT2 NOT NULL,
documento CHAR (8) NOT NULL,
nombre VARCHAR (20),
saldo decimal(15,2),
PRIMARY KEY (numero)
);

INSERT INTO cuentas(numero,documento,nombre,saldo) VALUES ('1234','25666777','Pedro Perez',500000.60);
INSERT INTO cuentas(numero,documento,nombre,saldo) VALUES ('2234','27888999','Juan Lopez',-250000);
INSERT INTO cuentas(numero,documento,nombre,saldo) VALUES ('3344','27888999','Juan Lopez',4000.50);
INSERT INTO cuentas(numero,documento,nombre,saldo) VALUES ('3346','32111222','Susana Molina',1000);

SELECT saldo FROM cuentas
WHERE saldo>=4000

SELECT numero,saldo FROM cuentas
WHERE nombre = 'Juan Lopez';

SELECT * FROM cuentas
WHERE saldo<0;

SELECT * FROM cuentas
WHERE numero>=3000;

------------------------------------------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS empleados;

CREATE TABLE empleados(
nombre VARCHAR (30),
documento CHAR (8),
sexo CHAR (1),
domicilio VARCHAR (30),
sueldobasico decimal (7,2),           --máximo estimado 99999.99
cantidadhijos smallint                --no superará los 255
);

INSERT INTO empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) VALUES ('Juan Perez','22333444','m','Sarmiento 123',500,2);
INSERT INTO empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) VALUES ('Ana Acosta','24555666','f','Colon 134',850,0);
INSERT INTO empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) VALUES ('Bartolome Barrios','27888999','m','Urquiza 479',10000.80,4);

INSERT INTO empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) VALUES ('Susana Molina','29000555','f','Salta 876',800.888,3);

--SUPERA LA CANTIDAD DE DIGITOS QUE SE PUEDEN INGRESAR
/*INSERT INTO empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) values ('Lucas Lopez','11122234','m','Libertad 831',1200000,4);*/

SELECT * from empleados
WHERE sueldobasico <= 900;

SELECT * from empleados
WHERE cantidadhijos >0;

