CREATE DATABASE actividades;
USE actividades;


CREATE TABLE almacenes (
  CODIGO int NOT NULL,
  LUGAR varchar(255) NOT NULL,
  CAPACIDAD int NOT NULL,
  PRIMARY KEY (CODIGO)
);


INSERT INTO almacenes VALUES (1,'Valencia',3),(2,'Barcelona',4),(3,'Bilbao',7),(4,'Los Angeles',2),(5,'San Francisco',8);


CREATE TABLE fabricantes (
  CODIGO int NOT NULL,
  NOMBRE varchar(255) NOT NULL,
  PRIMARY KEY (CODIGO)
);


INSERT INTO fabricantes VALUES (1,'Sony'),(2,'Creative Labs'),(3,'Hewlett-Packard'),(4,'Iomega'),(5,'Fujitsu'),(6,'Winchester');


CREATE TABLE articulos (
  CODIGO int NOT NULL,
  NOMBRE varchar(255) NOT NULL,
  PRECIO decimal(10,0) NOT NULL,
  FABRICANTE int NOT NULL,
  PRIMARY KEY (CODIGO),
  CONSTRAINT articulos_ibfk_1 FOREIGN KEY (FABRICANTE) 
  REFERENCES fabricantes (CODIGO)
);

INSERT INTO articulos VALUES (1,'Hard drive',240,5),(2,'Memory',120,6),(3,'ZIP drive',150,4),(4,'Floppy disk',5,6),(5,'Monitor',240,1),(6,'DVD drive',180,2),(7,'CD drive',90,2),(8,'Printer',270,3),(9,'Toner cartridge',66,3),(10,'DVD burner',180,2);


CREATE TABLE cajas (
  NUMREFERENCIA varchar(255) NOT NULL,
  CONTENIDO varchar(255) NOT NULL,
  VALOR decimal(10,0) NOT NULL,
  ALMACEN int NOT NULL,
  PRIMARY KEY (NUMREFERENCIA),
  CONSTRAINT cajas_ibfk_1 FOREIGN KEY (ALMACEN) 
  REFERENCES almacenes (CODIGO)
);


INSERT INTO cajas VALUES ('0MN7','Rocks',180,3),('4H8P','Rocks',250,1),('4RT3','Scissors',190,4),('7G3H','Rocks',200,1),('8JN6','Papers',75,1),('8Y6U','Papers',50,3),('9J6F','Papers',175,2),('LL08','Rocks',140,4),('P0H6','Scissors',125,1),('P2T6','Scissors',150,2),('TU55','Papers',90,5);

CREATE TABLE departamentos (
  CODIGO int NOT NULL,
  NOMBRE varchar(255) NOT NULL,
  PRESUPUESTO decimal(10,0) NOT NULL,
  PRIMARY KEY (CODIGO)
);


INSERT INTO departamentos VALUES (14,'IT',65000),(37,'Accounting',15000),(59,'Human Resources',240000),(77,'Research',55000);


CREATE TABLE empleados (
  DNI int NOT NULL,
  NOMBRE varchar(255) NOT NULL,
  APELLIDOS varchar(255) NOT NULL,
  DEPARTAMENTO int NOT NULL,
  PRIMARY KEY (DNI),
  CONSTRAINT empleados_ibfk_1 FOREIGN KEY (DEPARTAMENTO) 
  REFERENCES departamentos (CODIGO)
);


INSERT INTO empleados VALUES (123234877,'Michael','Rogers',14),(152934485,'Anand','Manikutty',14),(222364883,'Carol','Smith',37),(326587417,'Joe','Stevens',37),(332154719,'Mary-Anne','Foster',14),(332569843,'George','ODonnell',77),(546523478,'John','Doe',59),(631231482,'David','Smith',77),(654873219,'Zacary','Efron',59),(745685214,'Eric','Goldsmith',59),(845657233,'Luis','López',14),(845657245,'Elizabeth','Doe',14),(845657246,'Kumar','Swamy',14),(845657266,'Jose','Pérez',77);


CREATE TABLE peliculas (
  CODIGO int NOT NULL,
  NOMBRE varchar(255) NOT NULL,
  CALIFICACIONEDAD varchar(255) DEFAULT NULL,
  PRIMARY KEY (CODIGO)
);



INSERT INTO peliculas VALUES (1,'Citizen Kane','PG'),(2,'Singin in the Rain','G'),(3,'The Wizard of Oz','G'),(4,'The Quiet Man',NULL),(5,'North by Northwest',NULL),(6,'The Last Tango in Paris','NC-17'),(7,'Some Like it Hot','PG-13'),(8,'A Night at the Opera',NULL),(9,'Citizen King','G');



CREATE TABLE salas (
  CODIGO int NOT NULL,
  NOMBRE varchar(255) NOT NULL,
  PELICULA int DEFAULT NULL,
  PRIMARY KEY (CODIGO),
  CONSTRAINT salas_ibfk_1 FOREIGN KEY (PELICULA) 
  REFERENCES peliculas (CODIGO)
);



INSERT INTO salas VALUES (1,'Odeon',5),(2,'Imperial',1),(3,'Majestic',NULL),(4,'Royale',6),(5,'Paraiso',3),(6,'Nickelodeon',NULL);
select * from articulos,fabricantes;
-- Ejercicio 1
insert into fabricantes values
(11,'fabricante1'),
(12,'fabricante2'),
(13,'fabricante3'),
(14,'fabricante4'),
(15,'fabricante5'),
(16,'fabricante6'),
(7,'fabricante7'),
(8,'fabricante8'),
(9,'fabricante9'),
(10,'fabricante10');
insert into articulos values
(11,'articulo10',10,10),
(12,'articulo9',15,6),
(13,'articulo8',20,7),
(14,'articulo7',25,8),
(15,'articulo6',30,9),
(16,'articulo5',35,5),
(17,'articulo4',40,4),
(18,'articulo3',45,3),
(19,'articulo2',50,2),
(20,'articulo1',55,1);
-- ejercicio 1.1
select nombre from articulos;
-- ejercicio 1.2
select nombre,precio from articulos;
-- ejercicio 1.3
select nombre from articulos
where precio <= 200;
-- ejercicio 1.4
select * from articulos
where precio between 60 and 120;
-- ejercicio 1.5
select nombre,precio*166.386 from articulos;
-- ejercicio 1.6
select avg(precio) from articulos;
-- ejercicio 1.7
select avg(precio) from articulos
where FABRICANTE = 2;
-- ejercicio 1.8
select count(precio) from articulos
where precio>=180;
-- ejercicio 1.9
select nombre,precio from articulos
where precio>=180 order by precio desc;
select nombre,precio from articulos
where precio>=180 order by nombre asc;
-- ejercicio 1.10
select * from articulos
join fabricantes
on articulos.FABRICANTE=fabricantes.CODIGO;
-- Ejercicio 2
