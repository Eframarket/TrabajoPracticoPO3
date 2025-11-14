select version();
drop database if exists mercado;
create database mercado;
use mercado;
drop table if exists gondolas;
drop table if exists productos;

create table gondolas(
    codigo int auto_increment primary key,
    titulo varchar(25) not null check(length(titulo)>=3),
    secciones varchar(25) not null check (length(secciones)>=3),
    titulo enum('ALIMENTOS','PERFUMERIA','LIMPIEZA','JUGUETES','ELECTRONICA'),
    secciones enum('CENTRALES','PARED','CABECERA','ESPECIALIZADA')
);

create table productos(
    codigo int auto_increment primary key,
    marca varchar(25) not null check(length(marca)>=3),
    producto varchar(25) not null check(length(producto)>=3),
    codigo_gondolas int,
    foreign key (codigo_gondolas) references gondolas(codigo)
);

alter table productos 
    add constraint FK_Productos_Codigo_gondolas
    foreign key (codigo_gondolas)
    references gondolas(codigo);

show tables;

