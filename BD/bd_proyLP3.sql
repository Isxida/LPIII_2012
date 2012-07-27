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

create table Instrumentos(
id_instrumento int identity primary key,
codigo varchar(9) not null,
descripcion varchar(90) not null,
feccompra datetime not null,
fecgarantia datetime,
id_estado int references Estados(id_estado)
)

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

create table Studios(
id_studio int identity primary key,
codigo varchar(9) not null,
nombre varchar(45) not null,
capacidad int not null,
descripcion varchar(90) not null,
costo numeric(10,2)
)

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


