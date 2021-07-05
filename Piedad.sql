create database RegistrosBD
go
use RegistrosBD
go

create table ciudad
(
id int primary key identity(1,1),
nombre nvarchar (60) not null,
activo int
)
go

create table cliente
(
id nvarchar (16) primary key,
nombres nvarchar(30) ,
apellidos nvarchar(30) ,
ciudad int,
direccion nvarchar(100),
numCelular nvarchar(60) ,
fechaNac datetime,
activo int,
)
go

insert into ciudad(nombre, activo) values ('Managua',1)
insert into ciudad(nombre, activo) values ('Masaya',1 )
insert into ciudad(nombre, activo) values ('Matagalpa',1)
insert into ciudad(nombre, activo) values ('Carazo',1)
insert into ciudad(nombre, activo) values ('Esteli',1)
insert into ciudad(nombre, activo) values ('Leon',1)
insert into ciudad(nombre, activo) values ('Boaco',1 )
insert into ciudad(nombre, activo) values ('Nueva Segovia',1)
insert into ciudad(nombre, activo) values ('Granada',1)
insert into ciudad(nombre, activo) values ('Chontales',1)



insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (1, 'Marta Patricia', 'Gomez Gonzales', 1,'semafaros el riguero 1 arriba', '87654786','2000-02-16', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (2, 'Carmen Camila', 'Lopes Lopez', 1,'semafaros el riguero 3 arriba', '87687676','2001-08-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (3, 'Maria Alejandra', 'Mora Gutierrez', 2,'semafaros de la tenderi 2 abajo', '876546786','1987-10-21', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (4, 'Isabel Carolina', 'Fox Gutierrez', 4,'Parque luis alfonso 3 al lago media abajo', '76547897','1987-08-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (005, 'Ernesto Jose', 'Marin Ampie', 4,'Rotonda El Güegüense, 2 cuadras arriba', '87654098','1977-06-20', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (006, 'Joshua Josue', 'Manzanarez', 6,'Clínica Santa María, 1 cuadra al Sur, 20 varas abajo', '76590876','2000-08-07', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (007, 'Brunno Joel', 'Samqui Jon', 7,'Semáforos de Enitel Villa Fontana, 30 mts al Norte', '87654098','1965-10-25', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (009, 'Fernanda Antonella', 'Martinez Blandon', 1,'De la catedral, 1 cuadra al Este, 1/2 cuadra al Sur', '72436987','2000-05-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (010, 'Diana Marin', 'Tenorio Rivera', 1,'De la Parroquia, 3 1/2 cuadras al Sur', '87404948','1973-04-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (011, 'Ricardo Ernesto', 'Urbina Mendoza', 6,'Plaza Inter, 1 cuadra al Sur, 1 cuadra al Oeste', '89364585','1999-08-23', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (012, 'Josue Camilo', 'Valle Marchena', 6,'Casa de los Mejia Godoy, 1 cuadra al lago', '76498465','1987-08-01', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (013, 'Maria Esther', 'Cabrera Garcia', 3,'Parque Darío, 1/2 cuadra arriba', '87364098','2000-01-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (014, 'Lucia Fernanda', 'Mercado Martinez', 3,'Del Reloj, 1 cuadra abajo', '87765789','2003-03-17', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (015, 'Marggie Consuelo', 'Castillo Aguirre', 6,'Esquina Sureste del Parque Central', '76897890','1998-08-02', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (016, 'Jennifer Karina', 'Jarquin Soto', 7,'Km 19 Carretera a Ticuantepe', '87645908','1998-08-06', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (017, 'Dorian Noel', 'Marenco Mayorga', 8,'Parque Sandino, 500 varas al Esta', '34567890','1996-08-03', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (018, 'Alfredo Noel', 'Tendo Cortez', 10,'Puente León 2 cuadras abajo', '35467890','1970-08-21', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (019, 'Angie Estephanie', 'Salinas Torrez', 1, 'Semáforos del Zumen, 50 varas al Sur', '76890846','1986-10-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (020, 'Laura Natalia', 'Zvala Soto', 2,'Pista Juan Pablo II, contiguo a Union Fenosa', '78746457','2002-12-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (021, 'Josias Adrian', 'Montenegro Urbina', 3,'De la Subasta 10 vrs al lago, frente a Café Soluble', '84746748','1990-01-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (022, 'Grace Fernanda', 'Gomez Munguia', 4,'Entrada a reparto Cailagua, 20 varas al Sur', '89484647','1997-12-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (023, 'Rodolfo Jose', 'Escorcia Perez', 5,'De donde fue el cine Cabrera 1 cuadra al Norte', '78464748','1960-09-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (024, 'Cristian Roberto', 'Morales Jarquin', 6,'Frente a Iglesie Santa Ana', '78467464','1978-02-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (025, 'Yassiri Alexandra', 'Lopes Sanchez ', 7,'Calle Principal de San Juan del Sur', '78846440','2001-08-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (026, 'Candy Joseph', 'Aleman Madrigal', 8,'Costado oeste del parque central', '7849049','2002-09-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (027, 'Martin Carlos', 'Oz  Arguello', 9,'Barrio San Judas, Los Cocos, 3 cuadras arriba', '78474689','2003-10-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (028, 'Carmen Maria', 'Pichardo Aguilar', 10,'Contiguo a Escuela Salvador Mendieta', '78647894','1965-11-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (029, 'Josefa Camila', 'Telleria Barrera', 1,'Contiguo a Escuela Salvador Mendieta', '89043456','1967-12-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (030, 'Jose Alejandro', 'Hopper Rubio', 2,'Reparto San Juan Contiguo a Tercer Ojo', '72325467','1970-01-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (031, 'Nestor Alejandro', 'Rugama Perez',3,'semafaros el riguero 3 arriba', '74654987','1971-02-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (032, 'Brian Joel', 'Cano Santana', 4,'Km 65 Carretera a Masachapa 1262', '74849404','1972-03-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (033, 'Tyler Jose', 'Reyes Garcia', 5,'Club Terraza 300 metros al sur ', '73546384','1973-04-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (034, 'Franciosco Mario', 'Herrera Toledo', 6,'Del Bavinic 2 cuadras y media al norte Mano derecha', '78494746','1980-05-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (035, 'Willian Noel', 'Ruiz Cuadra', 7,'Frente a Zona Hippos Edificio Compostela', '78404946','1981-06-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (036, 'Aldo Byron', 'Estrada Morales', 8,'De la Universidad Internacional de Agricultura y Ganadería 50 vrs al este', '67484940','1982-07-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (037, 'Sofia Anto', 'Davila Narvaez', 9,' Contiguo al Hotel Central, Altagracia', '78464789','1983-08-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (038, 'Ana Paula', 'Gutierrez Bravo', 10,'Barrio Pedro Joaquín Chamorro, contiguo a Puerto Visión', '76890456','1984-09-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (039, 'Olga Josefina', 'Murillo Uriarte', 9,'Oficinas del Muelle Municipal de Laguna de Perlas', '78467590','1985-10-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (040, 'Miriam Camila', 'Gozas Huetes', 8,'Alcaldía Municipal de Corn Island, Brig Brey', '73564546','1986-08-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (041, 'Jose Carlos', 'Sanchez Arauz',7,'Semáforos del Colegio Bautista ½ cuadra al este, Barrio El Calvario', '88776590','1987-11-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (042, 'Gary Jose', 'Catillo Ramirez', 6,'Hotel Crowne 1c. Al sur, 1c.abajo', '76543736','1988-12-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (043, 'Leire Carolina', 'Garcia Santana', 5,' De la Librería Funcional 25 varas al norte.', '88373635','1990-01-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (044, 'Angela Paola', 'Obando Jiron', 4,'De la CST ½ cuadra al norte o del Centro Médico de Juigalpa ½ cuadra al sur','78965478','1991-02-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (045, 'Joseling Carolina', 'Rivas Catillo', 3,'Del PALI ½ cuadra al sur, Mercado de Artesanías de Jinotepe', '67456748','1992-03-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (046, 'Sabrina Cort', 'Salazar Molina', 2,'Del SILAIS 1½ cuadra al oeste', '765478906','1992-04-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (047, 'Maria Alejandra', 'Munoz Perez', 1,'Pasarela Universitaria 75 vrs al norte, Contiguo a Pizza Roma', '78946789','1993-05-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (048, 'Otto Alejandro', 'Melendez Serrano', 2,'Del Cuerpo de Bomberos de Granada 75 varas al este', '78467896','1994-06-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (049, 'Axel Elias', 'Robles Zelaya', 3,'De la Delegación del MINED 1/2 cuadra al sur', '78456784','1994-07-19', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (050, 'Alex Victor', ' Calero Duarte', 4,'De la Librería Funcional 25 varas al norte', '78645678','1995-08-03', 1)
insert into cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac, activo) values (008, 'Luis Victor', ' Soto Guido', 5,'libreria de la tenderi una arriba', '7864566','1995-08-03', 1)






Select id as 'ID Ciudad', nombre as 'Ciudad', activo as 'Activo' from ciudad
select * from cliente

drop table cliente

UPDATE ciudad SET nombre ='Jinotega' WHERE nombre ='Managua'
UPDATE ciudad SET nombre ='Managua' WHERE nombre ='Matagalpa'
UPDATE ciudad SET nombre ='Matagalpa' WHERE nombre ='Masaya'
UPDATE ciudad SET nombre ='Masaya' WHERE nombre ='Leon'
UPDATE ciudad SET nombre ='Leon' WHERE nombre ='Granada'

delete from cliente where id= 1
delete from cliente where id= 2
delete from cliente where id= 3
delete from cliente where id= 4

select * from cliente where ciudad= '1'

SELECT * from cliente WHERE DATEDIFF(YEAR,fechaNac,GETDATE()) >= 30  ORDER BY fechaNac

select *from cliente where fechaNac between '20000101 00:00:00' and '20050630 23:59:59'

Select nombres, apellidos, DATEDIFF(YEAR,fechaNac,GETDATE()) as Edad from cliente where ciudad = 1

select fechaNac, (Nombres + ' '+ Apellidos) as NombreCompleto from cliente

go

