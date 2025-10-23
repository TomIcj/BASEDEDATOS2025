DROP TABLE IF EXISTS articulos;

 CREATE TABLE articulos(
  codigo serial,
  nombre varchar(20),
  descripcion varchar(30),
  precio decimal(9,2),
  cantidad smallint default 0,
  PRIMARY KEY (codigo)
 );

 INSERT INTO articulos (nombre, descripcion, precio,cantidad)
  VALUES ('impresora','Epson Stylus C45',400.80,20);
 INSERT INTO articulos (nombre, descripcion, precio)
  VALUES ('impresora','Epson Stylus C85',500);
 INSERT INTO articulos (nombre, descripcion, precio)
  VALUES ('monitor','Samsung 14',800);
 INSERT INTO articulos (nombre, descripcion, precio,cantidad)
  VALUES ('teclado','ingles Biswal',100,50);

 update articulos set precio=precio+(precio*0.15);

 select * from articulos;

 select nombre||','||descripcion
  from articulos;

 update articulos set cantidad=cantidad-5
 where nombre='teclado';

 select * from articulos;