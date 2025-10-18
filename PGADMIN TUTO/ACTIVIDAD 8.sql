DROP TABLE IF EXISTS agenda;

 CREATE TABLE agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 INSERT INTO agenda (apellido,nombre,domicilio,telefono) VALUES ('Alvarez','Alberto','Colon 123','4234567');
 INSERT INTO agenda (apellido,nombre,domicilio,telefono) VALUES ('Juarez','Juan','Avellaneda 135','4458787');
 INSERT INTO agenda (apellido,nombre,domicilio,telefono) VALUES ('Lopez','Maria','Urquiza 333','4545454');
 INSERT INTO agenda (apellido,nombre,domicilio,telefono) VALUES ('Lopez','Jose','Urquiza 333','4545454');
 INSERT INTO agenda (apellido,nombre,domicilio,telefono) VALUES ('Salas','Susana','Gral. Paz 1234','4123456');

 DELETE FROM agenda
 WHERE nombre='Juan';

 DELETE FROM agenda
 WHERE telefono='4545454';

 SELECT * FROM agenda;

 DELETE FROM agenda;

 SELECT * FROM agenda;

 ------------------------------------------------------------------------------------------------------------------------------------

 DROP TABLE IF EXISTS articulos;

 CREATE TABLE articulos(
  codigo integer,
  nombre varchar(20),
  descripcion varchar(30),
  precio float,
  cantidad integer
 );


 INSERT INTO articulos (codigo, nombre, descripcion, precio,cantidad) VALUES (1,'impresora','Epson Stylus C45',400.80,20);
 INSERT INTO articulos (codigo, nombre, descripcion, precio,cantidad) VALUES (2,'impresora','Epson Stylus C85',500,30);
 INSERT INTO articulos (codigo, nombre, descripcion, precio,cantidad) VALUES (3,'monitor','Samsung 14',800,10);
 INSERT INTO articulos (codigo, nombre, descripcion, precio,cantidad) VALUES (4,'teclado','ingles Biswal',100,50);
 INSERT INTO articulos (codigo, nombre, descripcion, precio,cantidad) VALUES (5,'teclado','español Biswal',90,50);

 DELETE FROM articulos
  WHERE precio>=500;

 SELECT * FROM articulos;

 DELETE FROM articulos
  WHERE nombre='impresora';

 SELECT * FROM articulos;

 DELETE FROM articulos
  WHERE codigo<>4;

 SELECT * FROM articulos;