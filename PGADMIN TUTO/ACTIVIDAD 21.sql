DROP TABLE IF EXISTS clientes;
 
CREATE TABLE clientes(
documento char(8),
apellido varchar(20),
nombre varchar(20),
domicilio varchar(30),
telefono varchar (11)
);

INSERT INTO clientes(documento,apellido,nombre,domicilio,telefono) VALUES ('2233344','Perez','Juan','Sarmiento 980','4342345');
INSERT INTO clientes(documento,apellido,nombre,domicilio,telefono) VALUES ('2333344','Perez','Ana','Colon 234','2345123');
INSERT INTO clientes(documento,apellido,nombre,domicilio,telefono) VALUES ('2433344','Garcia','Luis','Avellaneda 1454','4558877');
INSERT INTO clientes(documento,apellido,nombre,domicilio,telefono) VALUES ('2533344','Juarez','Ana','Urquiza 444','4789900');

SELECT documento,upper(apellido),upper(nombre),domicilio,telefono FROM clientes;

SELECT documento,apellido,substr(nombre,1,1),domicilio,telefono FROM clientes;

