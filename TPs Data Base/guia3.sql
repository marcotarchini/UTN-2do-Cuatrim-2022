/*SELECT d.nombre, d.presupuesto
FROM departamento d
WHERE d.presupuesto = (SELECT MIN(d.presupuesto) FROM departamento d);
SELECT d.nombre, d.presupuesto
FROM departamento d
WHERE d.presupuesto = (SELECT MIN(d.presupuesto) FROM departamento d);

SELECT COUNT(e.codigo) AS 'Cantidad Empleados', d.nombre AS 'Nombre Depto'
FROM departamento d
LEFT JOIN empleado e on d.codigo = e.codigo_departamento
GROUP BY d.nombre;*/

/*create database Guia3Groupby;
use Guia3Groupby;

create table DEPARTAMENTO
(
codigo int not null unique,
nombre varchar(50) not null,
presupuesto double,
gastos double,
constraint pk_dep primary key (codigo)
);

create table EMPLEADO
(
codigo int not null unique,
nif varchar(20),
nombre varchar(50),
apellido1 varchar(50),
apellido2 varchar(50),
codigo_departamento int,
constraint pk_emp primary key (codigo),
constraint uk_emp foreign key (codigo) references departamento(codigo)
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
INSERT INTO empleado VALUES(13, '82635162B', 'Juan Antonio','Sáez', 'Guerrero',NULL);*/

/*CONSULTA 1*/
select apellido1
from empleado;

/*CONSULTA 2*/
select distinct apellido1
from empleado;

/*CONSULTA 3*/
select *
from empleado;

/*CONSULTA 4*/
select nombre as ne, apellido1 as a1
from empleado as e;

/*CONSULTA 5*/
select codigo_departamento
from empleado;

/*CONSULTA 6*/
select distinct codigo_departamento
from empleado;

/*CONSULTA 7*/
select concat(nombre,' ',apellido1) as nombreYApellido
from empleado;

/*CONSULTA 8*/
select concat (upper(nombre),' ',upper(apellido1)) as nombreYApellido
from empleado;

/*CONSULTA 9*/
select concat (lower(nombre),' ',lower(apellido1)) as nombreYApellido
from empleado;

/*CONSULTA 10
select codigo, nif
from empleado
where substring(nif);

/*CONSULTA 11*/
select nombre as nd, (presupuesto - gastos) as diferencia
from departamento;

/*CONSULTA 12*/
select nombre, presupuesto
from departamento
order by nombre desc, presupuesto desc;

/*CONSULTA 13*/
select *
from departamento
order by codigo, nombre, presupuesto, gastos desc;

/*CONSULTA 14*/
select nombre
from departamento
order by nombre desc;

/*CONSULTA 15*/
select apellido1, nombre
from empleado
order by apellido1, nombre desc;

/*CONSULTA 16*/
select nombre, presupuesto
from departamento
order by presupuesto desc
limit 3;

/*CONSULTA 17*/
select nombre, presupuesto
from departamento
order by presupuesto
limit 3;

/*CONSULTA 18*/
select nombre, gastos
from departamento
order by presupuesto
limit 2;

/*CONSULTA 19*/
select nombre, gastos
from departamento
order by presupuesto desc
limit 2;

/*CONSULTA 20*/
select *
from empleado
where codigo >=3
limit 5;

/*CONSULTA 21*/
select nombre, presupuesto
from departamento
where presupuesto >=150000;

/*CONSULTA 22*/
select nombre, gastos
from departamento
where presupuesto <5000;

/*CONSULTA 23*/
select nombre, presupuesto
from departamento
where presupuesto >=100000 and presupuesto <=150000;

/*CONSULTA 24*/
select nombre, presupuesto
from departamento
where presupuesto <=100000 and presupuesto >=150000;

/*CONSULTA 25*/
select nombre, presupuesto
from departamento
where presupuesto  between 100000 and 150000;

/*CONSULTA 26*/
select nombre, presupuesto
from departamento
where presupuesto not between 100000 and 150000;

/*CONSULTA 27*/
select nombre, presupuesto, gastos
from departamento
where presupuesto < gastos;

/*CONSULTA 28*/
select nombre, presupuesto, gastos
from departamento
where presupuesto > gastos;

/*CONSULTA 29*/
select nombre, presupuesto, gastos
from departamento
where presupuesto = gastos;

/*CONSULTA 30*/
select *
from empleado
where apellido2 is null;

/*CONSULTA 31*/
select *
from empleado
where apellido2 is not null;

/*CONSULTA 32*/
select *
from empleado
where apellido2 like "Lopez";

/*CONSULTA 33*/
select *
from empleado
where apellido2 like"Diaz" or apellido2 like "Moreno";/**no funciona*/

/*CONSULTA 34*/
select *
from empleado
where apellido2 in ("Diaz", "Moreno");

/*CONSULTA 35*/
select nombre, apellido1, apellido2, nif
from empleado
where codigo_departamento=3;

/*CONSULTA 36*/
select nombre, apellido1, apellido2, nif
from empleado
where codigo_departamento in (2,4,5);

/*CONSULTA MULTITABLA 1*/
select *
from empleado, departamento
where empleado.codigo_departamento=departamento.codigo;

/*CONSULTA MULTITABLA 2*/
select *
from empleado, departamento
where empleado.codigo_departamento=departamento.codigo order by departamento.nombre;

/*CONSULTA MULTITABLA 3*/
select distinct departamento.nombre, departamento.codigo
from departamento, empleado
where empleado.codigo_departamento=departamento.codigo and empleado.nombre is not null ;

/*CONSULTA MULTITABLA 4*/
select distinct departamento.codigo, departamento.nombre, (presupuesto - gastos) as disponible
from departamento, empleado
where empleado.codigo_departamento=departamento.codigo and empleado.nombre is not null;

/*CONSULTA MULTITABLA 5*/
select departamento.nombre
from departamento, empleado
where empleado.codigo_departamento=departamento.codigo and nif like "38382980M";

/*CONSULTA MULTITABLA 6*/
select departamento.nombre
from departamento, empleado
where empleado.codigo_departamento=departamento.codigo and empleado.nombre like "Pepe" and empleado.apellido1 like "Ruiz" and empleado.apellido2 like "Santana";

/*CONSULTA MULTITABLA 7*/
select empleado.codigo, empleado.nombre, empleado.apellido1, empleado.apellido2
from departamento, empleado
where empleado.codigo_departamento=departamento.codigo and departamento.nombre like "I+D" 
order by empleado.nombre;

/*CONSULTA MULTITABLA 8*/
select *
from departamento, empleado
where empleado.codigo_departamento=departamento.codigo and departamento.nombre in ("I+D", "Sistemas", "Contabilidad") 
order by empleado.nombre;

/*CONSULTA MULTITABLA 9*/
select empleado.nombre
from departamento, empleado
where empleado.codigo_departamento=departamento.codigo and presupuesto not between 100000 and 200000;

/*CONSULTA MULTITABLA 10*/
select distinct departamento.nombre
from departamento, empleado
where empleado.codigo_departamento=departamento.codigo and apellido2 is null;

/*CONSULTA MULTITABLA EXTERNA 1*/
select empleado.nombre, departamento.nombre
from empleado
left join departamento on empleado.codigo_departamento=departamento.codigo;

/*CONSULTA MULTITABLA EXTERNA 2*/
select empleado.nombre, departamento.nombre
from empleado
left join departamento on empleado.codigo_departamento=departamento.codigo
where departamento.nombre is null;

/*CONSULTA MULTITABLA EXTERNA 3*/
select empleado.nombre, departamento.nombre
from departamento
left join empleado on empleado.codigo_departamento=departamento.codigo
where empleado.nombre is null;

/*CONSULTA MULTITABLA EXTERNA 4*/
select empleado.nombre, departamento.nombre
from departamento
left join empleado on empleado.codigo_departamento=departamento.codigo
where empleado.nombre is null and departamento.nombre is null
order by departamento.nombre;

/*CONSULTA FUNCIONES DE AGREGADO 1*/
select sum(presupuesto) as total
from departamento;

/*CONSULTA FUNCIONES DE AGREGADO 2*/
select avg(presupuesto) as promedio
from departamento;

/*CONSULTA FUNCIONES DE AGREGADO 3*/
select min(presupuesto) as minimo
from departamento;

/*CONSULTA FUNCIONES DE AGREGADO 4*/
select departamento.nombre, min(presupuesto)
from departamento;

/*CONSULTA FUNCIONES DE AGREGADO 5*/
select max(presupuesto)
from departamento;

/*CONSULTA FUNCIONES DE AGREGADO 6*/
select departamento.nombre, max(presupuesto)
from departamento;

/*CONSULTA FUNCIONES DE AGREGADO 7*/
select count(codigo)
from empleado;

/*CONSULTA FUNCIONES DE AGREGADO 8*/
select count(apellido2)
from empleado
where apellido2 is not null;

/*CONSULTA FUNCIONES DE AGREGADO 9*/
select departamento.nombre, count(empleado.codigo)
from empleado, departamento
group by departamento.nombre;

/*CONSULTA FUNCIONES DE AGREGADO 10*/


