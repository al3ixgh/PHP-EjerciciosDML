use EJERCICIOS_DDL; 
-- Ejercicio 1
insert into DESPACHOS values 
(1,10),
(2,20),
(3,30),
(4,40),
(5,50),
(6,60),
(7,70),
(8,80),
(9,90),
(10,5);
insert into DIRECTORES values('12345678','Aleix',null,1),
('22345678','Musta',12345678,2),
('32345678','Toni',12345678,3),
('42345678','Jordi',12345678,4),
('52345678','Jesus',12345678,5),
('62345678','Bogdan',12345678,6),
('72345678','Martin',12345678,7),
('82345678','Fernando',12345678,8),
('92345678','Jose',12345678,9),
('11345678','Aziz',12345678,10);
-- Ejercicio 2
insert into PIEZAS values
(1,'pieza1'),
(2,'pieza2'),
(3,'pieza3'),
(4,'pieza4'),
(5,'pieza5'),
(6,'pieza6'),
(7,'pieza7'),
(8,'pieza8'),
(9,'pieza9'),
(10,'pieza10');
insert into PROVEEDORES values
('aaaa','nombre1'),
('aaab','nombre2'),
('aaac','nombre3'),
('aaad','nombre4'),
('aaae','nombre5'),
('aaaf','nombre6'),
('aaag','nombre7'),
('aaah','nombre8'),
('aaai','nombre9'),
('aaaj','nombre10');
insert into SUMINISTRA values
(1,'aaaa',10),
(2,'aaab',20),
(3,'aaac',30),
(4,'aaad',40),
(5,'aaae',50),
(6,'aaaf',60),
(7,'aaag',70),
(8,'aaah',80),
(9,'aaai',90),
(10,'aaaj',1);
-- Ejercicio 3
insert into CIENTIFICOS values
('12345678','Nombre1'),
('22345678','Nombre2'),
('32345678','Nombre3'),
('42345678','Nombre4'),
('52345678','Nombre5'),
('62345678','Nombre6'),
('72345678','Nombre7'),
('82345678','Nombre8'),
('92345678','Nombre9'),
('13345678','Nombre10');
insert into PROYECTO values
('aaaa','nombre1',10),
('aaab','nombre2',11),
('aaac','nombre3',12),
('aaad','nombre4',13),
('aaae','nombre5',14),
('aaaf','nombre6',15),
('aaag','nombre7',16),
('aaah','nombre8',17),
('aaai','nombre9',18),
('aaaj','nombre10',19);
insert into ASIGNADO_A values
('12345678','aaaa'),
('22345678','aaab'),
('32345678','aaac'),
('42345678','aaad'),
('52345678','aaae'),
('62345678','aaaf'),
('72345678','aaag'),
('82345678','aaah'),
('92345678','aaai'),
('13345678','aaaj');
-- Ejercicio 4
insert into PRODUCTOS values
(1,'nombre1',10),
(2,'nombre3',20),
(3,'nombre4',30),
(4,'nombre5',40),
(5,'nombre6',50),
(6,'nombre7',60),
(7,'nombre8',70),
(8,'nombre9',80),
(9,'nombre10',90),
(10,'nombre2',1);
insert into CAJEROS values
(1,'nom1'),
(2,'nom2'),
(3,'nom3'),
(4,'nom4'),
(5,'nom5'),
(6,'nom6'),
(7,'nom7'),
(8,'nom8'),
(9,'nom9'),
(10,'nom10');
insert into MAQUINAS_REGISTRADORAS values
(1,10),
(2,11),
(3,12),
(4,13),
(5,14),
(6,15),
(7,16),
(8,17),
(9,18),
(10,19);
insert into VENTA values
(1,10,1),
(2,9,3),
(3,8,5),
(4,7,7),
(5,6,9),
(6,5,2),
(7,4,4),
(8,3,6),
(9,2,8),
(10,1,10);
-- Ejercicio 5
insert into FACULTAD values
(1,'nom10'),
(2,'nom9'),
(3,'nom8'),
(4,'nom7'),
(5,'nom6'),
(6,'nom5'),
(7,'nom4'),
(8,'nom3'),
(9,'nom2'),
(10,'nom1');
insert into INVESTIGADORES values
('12345678','apellido1',1),
('22345678','apellido2',2),
('32345678','apellido3',3),
('42345678','apellido4',4),
('52345678','apellido5',5),
('62345678','apellido6',6),
('72345678','apellido7',7),
('82345678','apellido8',8),
('92345678','apellido9',9),
('13345678','apellido10',10);

insert into EQUIPOS values
('aaaa','equipo1',1),
('aaab','equipo2',2),
('aaac','equipo3',3),
('aaad','equipo4',4),
('aaae','equipo5',5),
('aaaf','equipo1',6),
('aaag','equipo6',7),
('aaah','equipo7',8),
('aaai','equipo8',9),
('aaaj','equipo9',10);
insert into RESERVA values
('12345678','aaaj',STR_TO_DATE('01-01-2001','%d-%m-%Y'),STR_TO_DATE('1-12-2001','%d-%m-%Y')),
('22345678','aaai',STR_TO_DATE('02-01-2001','%d-%m-%Y'),STR_TO_DATE('1-11-2002','%d-%m-%Y')),
('32345678','aaah',STR_TO_DATE('03-01-2001','%d-%m-%Y'),STR_TO_DATE('1-10-2003','%d-%m-%Y')),
('42345678','aaag',STR_TO_DATE('04-01-2001','%d-%m-%Y'),STR_TO_DATE('1-09-2004','%d-%m-%Y')),
('52345678','aaaf',STR_TO_DATE('05-01-2001','%d-%m-%Y'),STR_TO_DATE('1-08-2005','%d-%m-%Y')),
('62345678','aaae',STR_TO_DATE('06-01-2001','%d-%m-%Y'),STR_TO_DATE('1-07-2006','%d-%m-%Y')),
('72345678','aaad',STR_TO_DATE('07-01-2001','%d-%m-%Y'),STR_TO_DATE('1-06-2007','%d-%m-%Y')),
('82345678','aaac',STR_TO_DATE('08-01-2001','%d-%m-%Y'),STR_TO_DATE('1-05-2008','%d-%m-%Y')),
('92345678','aaab',STR_TO_DATE('09-01-2001','%d-%m-%Y'),STR_TO_DATE('1-04-2009','%d-%m-%Y')),
('13345678','aaaa',STR_TO_DATE('10-01-2001','%d-%m-%Y'),STR_TO_DATE('1-03-2010','%d-%m-%Y'));