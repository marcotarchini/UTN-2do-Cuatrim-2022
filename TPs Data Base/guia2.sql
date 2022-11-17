/*create database GuiaDML;
use GuiaDML;

create table DEPARTAMENTO
(
idDepartamento int auto_increment,
nombre varchar(50) not null,
presupuesto double,
descuento double,
constraint pk_dep primary key (idDepartamento),
constraint uk_nom_dep unique (nombre)
);

create table EMPLEADO
(
idEmpleado int auto_increment,
codigo varchar(20) not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
segApellido varchar(50),
idDepartamento int,
constraint pk_dep primary key (idEmpleado),
constraint uk_nom_dep unique (codigo)
);

INSERT INTO departamento VALUES(1, 'Desarrollo', 120000, 6000);
INSERT INTO departamento VALUES(2, 'Sistemas', 150000, 21000);
INSERT INTO departamento VALUES(3, 'Recursos Humanos', 280000, 25000);
INSERT INTO departamento VALUES(4, 'Contabilidad', 110000, 3000);
INSERT INTO departamento VALUES(5, 'I+D', 375000, 380000);
INSERT INTO departamento VALUES(6, 'Proyectos', 0, 0);
INSERT INTO departamento VALUES(7, 'Publicidad', 0, 1000);
INSERT INTO empleado VALUES(1, '32481596F', 'Aarón', 'Rivero', 'Gómez', 1);
INSERT INTO empleado VALUES(2, 'Y5575632D', 'Adela', 'Salas', 'Díaz', 2);
INSERT INTO empleado VALUES(3, 'R6970642B', 'Adolfo', 'Rubio', 'Flores', 3);
INSERT INTO empleado VALUES(4, '77705545E', 'Adrián', 'Suárez', NULL, 4);
INSERT INTO empleado VALUES(5, '17087203C', 'Marcos', 'Loyola', 'Méndez', 5);
INSERT INTO empleado VALUES(6, '38382980M', 'María', 'Santana', 'Moreno', 1);
INSERT INTO empleado VALUES(7, '80576669X', 'Pilar', 'Ruiz', NULL, 2);
INSERT INTO empleado VALUES(8, '71651431Z', 'Pepe', 'Ruiz', 'Santana', 3);
INSERT INTO empleado VALUES(9, '56399183D', 'Juan', 'Gómez', 'López', 2);
INSERT INTO empleado VALUES(10, '46384486H', 'Diego','Flores', 'Salas', 5);
INSERT INTO empleado VALUES(11, '67389283A', 'Marta','Herrera', 'Gil', 1);
INSERT INTO empleado VALUES(12, '41234836R', 'Irene','Salas', 'Flores', NULL);
INSERT INTO empleado VALUES(13, '82635162B', 'Juan Antonio','Sáez', 'Guerrero', NULL);*/
/*CONSULTA 1*/
select apellido
FROM empleado;
/*CONSULTA 2*/
SELECT distinct apellido
from empleado;
/*CONSULTA 3*/
select *
FROM empleado;
/*CONSULTA 4*/
select nombre, apellido, segApellido
FROM empleado;
/*CONSULTA 5*/
select codigo
from empleado;
/*CONSULTA 6*/
SELECT distinct codigo
from empleado;
/*CONSULTA 7*/
select concat(nombre, ' ',apellido) as nombreYApell
from empleado;
/*CONSULTA 8 SIN HACER*/
select upper ( concat(nombre, ' ',apellido)) as  nombreYApelli
FROM empleado;
/*CONSULTA 9*/
select LOWER (concat (nombre, ' ',apellido)) as  nombreYApellid
FROM empleado;
/*CONSULTA 10* SIN HACER
select right(codigo),
from empleado;
SELECT idEmpleado, 
SUBSTRING(codigo, 1, 8) AS digitos_nif, 
SUBSTRING(codigo,9,1) as letra_nif  FROM empleado;*/
/*CONSULTA 11*/
select nombre, (presupuesto - descuento) as diferencia
from departamento;
/*CONSULTA 12*/
select nombre, presupuesto 
from departamento
order by presupuesto;
/*CONSULTA 13*/
select nombre
from departamento
order by nombre;
/*CONSULTA 14*/
select nombre
from departamento
order by nombre desc;
/*CONSULTA 15*/
select apellido, nombre 
from empleado
order by apellido;
/*CONSULTA 16*/
select nombre, presupuesto
from departamento
order by presupuesto desc
LIMIT 3;
/*CONSULTA 17*/
select nombre, presupuesto
from departamento
order by presupuesto 
LIMIT 3;
/*CONSULTA 18*/
select nombre, descuento
from departamento
order by presupuesto desc
LIMIT 2;
/*CONSULTA 19*/
select nombre, descuento
from departamento
order by presupuesto desc
LIMIT 2;
/*CONSULTA 20*/
select *
from empleado
WHERE idEmpleado>=3 
LIMIT 5;
/*CONSULTA 21*/
select nombre, presupuesto
from departamento
where presupuesto>=150000;
/*CONSULTA 22*/
select nombre, descuento
from departamento
where descuento<=5000;
/*CONSULTA 23*/
select nombre, presupuesto
from departamento
where presupuesto>=100000 and presupuesto<=200000;
/*CONSULTA 24*/
select nombre, presupuesto
from departamento
where presupuesto>=200000 and presupuesto<=100000;
/*CONSULTA 25*/
select nombre, presupuesto
from departamento
where presupuesto between 100000 and 200000;
/*CONSULTA 26*/
select nombre, presupuesto
from departamento
where presupuesto not between 100000 and 200000;
/*CONSULTA 27*/
select nombre, descuento, presupuesto
from departamento
where presupuesto > descuento;
/*CONSULTA 28*/
select nombre, descuento, presupuesto
from departamento
where presupuesto < descuento;
/*CONSULTA 29*/
select nombre, descuento, presupuesto
from departamento
where presupuesto = descuento;
/*CONSULTA 30*/
select *
from empleado
where segApellido is null;
/*CONSULTA 31*/
select *
from empleado
where segApellido is not null;
/*CONSULTA 32*/
select *
from empleado
where segApellido like 'Lopez';
/*CONSULTA 33*/
select *
from empleado
where segApellido like 'Diaz' or 'Moreno';
/*CONSULTA 34*/
select *
from empleado
where segApellido in ('Diaz','Moreno');
/*CONSULTA 35*/
select nombre,apellido,segApellido,codigo
from empleado
where idDepartamento=3;
/*CONSULTA 36*/
select nombre,apellido,segApellido,codigo
from empleado
where idDepartamento= 2 or 4 or 5;
/*CONSULTA 1B*/
select *
from empleado, departamento
where empleado.idDepartamento=departamento.idDepartamento;
/*CONSULTA 2B*/
select *
from departamento, empleado 
where empleado.idDepartamento=departamento.idDepartamento
order by departamento.nombre;
/*CONSULTA 3B*/
select codigo, empleado.nombre
from departamento, empleado
where empleado.idDepartamento=departamento.idDepartamento and empleado.nombre is not null;
/*CONSULTA 4B*/
select codigo, empleado.nombre, (presupuesto-descuento) as diferencia
from departamento, empleado
where empleado.idDepartamento=departamento.idDepartamento and empleado.nombre is not null;
/*CONSULTA 5B*/
select departamento.nombre
from empleado, departamento 
where empleado.idDepartamento=departamento.idDepartamento and codigo like "38382980M";
/*CONSULTA 6B*/
select departamento.nombre
from empleado, departamento 
where empleado.idDepartamento=departamento.idDepartamento and empleado.nombre like "Pepe" and empleado.apellido like "Ruiz" and empleado.segApellido like "Santana";
/*CONSULTA 7B*/
select empleado.*
from empleado, departamento
where empleado.idDepartamento=departamento.idDepartamento and departamento.nombre like "I+D"
order by apellido;
/*CONSULTA 8B*/
select empleado.*
from empleado, departamento
where empleado.idDepartamento=departamento.idDepartamento and departamento.nombre in ("I+D","Sistemas","Contabilidad")
order by apellido;
/*CONSULTA 9B*/
select empleado.nombre
from empleado, departamento
where empleado.idDepartamento=departamento.idDepartamento and presupuesto not between 100000 and 200000;
/*CONSULTA 10B*/
select empleado.*
from empleado, departamento
where empleado.idDepartamento=departamento.idDepartamento and segApellido is null;
/*CONSULTA 1C*/
select *
from empleado
left join departamento on empleado.idDepartamento=departamento.idDepartamento;