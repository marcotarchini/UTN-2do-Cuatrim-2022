
/*create database Ejercicio1;
use Ejercicio1;
create table DEPARTAMENTO
(
codigo int auto_increment,
nombre varchar(50) not null,
idDirector int,
constraint pk_dep primary key (codigo),
constraint uk_nom_dep unique (nombre)
);
create table EMPLEADOS
(
idEmpleado int auto_increment primary key,
nombre varchar(50),
idDep int
);*/
drop database ejercicio2;
create database ejercicio2;
use ejercicio2;
create table PROVEEDOR
(
idProveedor int auto_increment,
nombre varchar(50) unique key,
direccion varchar(50) not null,
ciudad varchar(50),
provincia varchar(50),
constraint pk_prov primary key (idProveedor)
);
create table MERCADERIA
(
idMercaderia int auto_increment,
color varchar(50),
cantidad int,
idCategMasPrecio varchar(50),
idProveedor varchar(50),
constraint pk_merc primary key (idMercaderia),
constraint fk_categ foreign key (idCategMasPrecio) references categmasprecio(idCategMasPrecio),
constraint fk_prov foreign key (idProveedor) references proveedor(idProveedor)
);
create table CATEGMASPRECIO
(
idCategMasPrecio int auto_increment,
categoria varchar(50),
precio double,
constraint pk_categ primary key (idCategMasPrecio)
);
delete ejercicio2;
