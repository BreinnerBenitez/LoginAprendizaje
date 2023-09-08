create database proyecto_jsp;
use proyecto_jsp;

create table if not exists usuarios(
id int  auto_increment primary key null,
Nombre varchar(20) not null,
Apellido varchar (20) not null,
Usuario varchar(20) not null,
Contrasena varchar(20) not null,
Pais varchar (20) not null,
Tecnologia varchar(20) null
)engine=InnoDB; 



