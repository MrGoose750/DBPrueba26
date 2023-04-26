--DDL
/*Crear bd*/
create database DBPrueba260423
go

use DBPrueba260423
go

create table Ciudad(
	id int primary key identity(1,1),
	nombre nvarchar(50) not null, 
	estado bit default 1
);
go

create table Persona(
	id int primary key identity(1,1),
	primerNombre nvarchar(30) not null,
	segundoNombre nvarchar(30),
	primerApellido nvarchar(30) not null,
	segundoApellido nvarchar(30),
	fechaNac datetime not null,
	sexo bit default 1 not null,
	telefono nvarchar(16) not null,
	email nvarchar(100) not null,
	direccion nvarchar(300),
	estado bit default 'true'
);
go

select * from Ciudad
select * from Persona

--DML
--Crear o Insertar un registro
Insert into Ciudad(nombre) values (N'Masaya')
Insert into Ciudad(nombre) values (N'Managua'), (N'Granada'), (N'Jinotepe'), (N'Leon')

--Mostrar registro
select * from Ciudad