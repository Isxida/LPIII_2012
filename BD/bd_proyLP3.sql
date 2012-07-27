use master
go

set dateformat ymd
go
--valida que exista la base de datos

if db_id('BD_ProyLP3') is not null
	begin
		use master
		drop database BD_ProyLP3
	end
	
--creacion de la base de datos del proycto
create database BD_ProyLP3
go

USE BD_ProyLP3
go

create table Estados(
id_estado int identity primary key,
descripcion varchar(45) not null
)

insert into Estados values ('Habilitado');
insert into Estados values ('Deshabilitado');

create table Instrumentos(
id_instrumento int identity primary key,
codigo varchar(9) not null,
descripcion varchar(90) not null,
feccompra datetime not null,
fecgarantia datetime,
id_estado int references Estados(id_estado)
)

insert Instrumentos values('G01','Guitarra Acustica',15/07/2012,31/12/2012,1);
insert Instrumentos values('B01','Bajo Electrico',15/05/2012,31/12/2012,1);
insert Instrumentos values('BA01','Bateria Mapex',15/04/2012,31/12/2012,1);
insert Instrumentos values('G02','Guitarra Electrica Gibson',15/05/2012,31/12/2012,1);
insert Instrumentos values('B02','Bajo w/ mini amplificador',15/05/2012,31/12/2012,1);
insert Instrumentos values('BA02','Bateria DW w/ skull design',15/04/2012,31/12/2012,1);
insert Instrumentos values('G03','Guitarra Gibson SG',15/05/2012,31/12/2012,1);
insert Instrumentos values('B03','Bajo SCHECKTER diamond series',15/05/2012,31/12/2012,1);
insert Instrumentos values('BA3','Bateria Tama',15/04/2012,31/12/2012,1);
insert Instrumentos values('G04','Guitarra FLYING V ',15/05/2012,31/12/2012,1);
insert Instrumentos values('B04','Bajo Warwick',15/05/2012,31/12/2012,1);
insert Instrumentos values('BA4','Bateria Yamaha',15/04/2012,31/12/2012,1);
insert Instrumentos values('G05','Guitarra GIBSON MODERNE',15/05/2012,31/12/2012,1);
insert Instrumentos values('B05','Bajo Jackson',15/05/2012,31/12/2012,1);
insert Instrumentos values('BA5','Bateria Zildjian',15/04/2012,31/12/2012,1);
insert Instrumentos values('G06','Guitarra FENDER JAZZMASTER ',15/05/2012,31/12/2012,1);
insert Instrumentos values('B06','Bajo D Addario',15/05/2012,31/12/2012,1);
insert Instrumentos values('BA6','Bateria Pearl',15/04/2012,31/12/2012,1);
insert Instrumentos values('G07','Guitarra FENDER SQUIER ',15/05/2012,31/12/2012,1);
insert Instrumentos values('B07','Bajo Dunlop',15/05/2012,31/12/2012,1);
insert Instrumentos values('BA7','Bateria Remo',15/04/2012,31/12/2012,1);
insert Instrumentos values('G08','Guitarra IBANEZ',15/05/2012,31/12/2012,1);
insert Instrumentos values('B08','Bajo Fernandes',15/05/2012,31/12/2012,1);
insert Instrumentos values('BA8','Platillos Sabian',15/04/2012,31/12/2012,1);
insert Instrumentos values('G09','Guitarra JACKSON',15/05/2012,31/12/2012,1);
insert Instrumentos values('B09','Bajo Electrico Magma',15/05/2012,31/12/2012,1);
insert Instrumentos values('BA9','Platillos Zildjian',15/04/2012,31/12/2012,1);
insert Instrumentos values('G10','Guitarra FRNDER STRATOCASTER ',15/05/2012,31/12/2012,1);
insert Instrumentos values('B10','Bajo Epiphone',15/05/2012,31/12/2012,1);
insert Instrumentos values('BA10','Bateria Colombo w/ design',15/04/2012,31/12/2012,1);


create table Usuarios(
id_usuario int identity primary key,
codigo varchar(9) not null, 
contrasena varchar(45) not null,
dni varchar(9) not null,
nom varchar(45) not null,
ape varchar(45) not null,
edad int not null,
fecnac datetime not null,
direccion varchar(80)
)

insert into Usuarios values('ADM','ADM','72582819','Isxida','Romero',19,13/05/1993,null);
insert into Usuarios values('U01','U03','72582819','Yvan','Lopez',23,10/02/1987,null);
insert into Usuarios values('U02','U03','72582819','Abanto','Calvo',21,19/08/1991,null);
insert into Usuarios values('U03','U03','72582819','Chicho','Darks',20,23/12/1992,null);

create table Studios(
id_studio int identity primary key,
codigo varchar(9) not null,
nombre varchar(45) not null,
capacidad int not null,
descripcion varchar(90) not null,
costo numeric(10,2)
)

insert into Studios values ('S01','Sala del eco acustico',5,'Sala del eco acustico. Ecoooooooooo?',150);
insert into Studios values ('S02','Sala del rockero medieval',4,'Alguien dijo fiesta romana brutal w/ pogo?',250);
insert into Studios values ('S03','Sala del rock melancolico ',5,'Para esas canciones indirectas a tu ex. y otras.',350);
insert into Studios values ('S04','Sala del indie rock',6,'Porque el rock actual es muy mainstream.',500);
insert into Studios values ('S05','Sala del averno',4,'Barato pero potente bro.',200);

create table Reservas(
id_reserva int identity primary key,
dni varchar not null,
typedoc int not null,
nom varchar not null,
ape varchar not null,
horas int not null,
initHorario datetime not null,
id_estudio int references Studios(id_studio),
guitarra varchar not null,
bajo varchar not null,
bateria varchar not null,
fec_registro date not null,
)


