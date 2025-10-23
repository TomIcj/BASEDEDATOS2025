DROP TABLE IF EXISTS visitas;

CREATE TABLE visitas (
numero serial,
nombre varchar(30) default 'Anonimo',
mail varchar(50),
pais varchar (20),
fecha timestamp,
PRIMARY KEY(numero)
);

INSERT INTO visitas (nombre,mail,pais,fecha) VALUES ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
INSERT INTO visitas (nombre,mail,pais,fecha) VALUES ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
INSERT INTO visitas (nombre,mail,pais,fecha) VALUES ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
INSERT INTO visitas (nombre,mail,pais,fecha) VALUES ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
INSERT INTO visitas (nombre,mail,pais,fecha) VALUES ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
INSERT INTO visitas (nombre,mail,pais,fecha) VALUES ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
INSERT INTO visitas (nombre,mail,pais,fecha) VALUES ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

SELECT * FROM visitas
ORDER BY fecha DESC;

SELECT nombre,pais,extract(month from fecha)
  FROM visitas
 ORDER BY pais,extract(month from fecha) desc;

 SELECT nombre,mail,
  extract(month from fecha) as mes,
  extract(day from fecha) as dia,
  extract(hour from fecha) as hora
  FROM visitas
 ORDER BY 3,4,5;

 SELECT mail, pais
  from visitas
  WHERE extract(month from fecha)=10
 ORDER BY 2;