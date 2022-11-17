/*DROP DATABASE IF EXISTS jardineria;
CREATE DATABASE jardineria CHARACTER SET utf8mb4;
USE jardineria;
CREATE TABLE oficina (
codigo_oficina VARCHAR(10) NOT NULL,
ciudad VARCHAR(30) NOT NULL,
pais VARCHAR(50) NOT NULL,
region VARCHAR(50) DEFAULT NULL,
codigo_postal VARCHAR(10) NOT NULL,
telefono VARCHAR(20) NOT NULL,
linea_direccion1 VARCHAR(50) NOT NULL,
linea_direccion2 VARCHAR(50) DEFAULT NULL,
PRIMARY KEY (codigo_oficina)
);
CREATE TABLE empleado (
codigo_empleado INTEGER NOT NULL,
nombre VARCHAR(50) NOT NULL,
apellido1 VARCHAR(50) NOT NULL,
apellido2 VARCHAR(50) DEFAULT NULL,
extension VARCHAR(10) NOT NULL,
email VARCHAR(100) NOT NULL,
codigo_oficina VARCHAR(10) NOT NULL,
codigo_jefe INTEGER DEFAULT NULL,
puesto VARCHAR(50) DEFAULT NULL,
PRIMARY KEY (codigo_empleado),
FOREIGN KEY (codigo_oficina) REFERENCES oficina (codigo_oficina),
FOREIGN KEY (codigo_jefe) REFERENCES empleado (codigo_empleado)
);
CREATE TABLE gama_producto (
gama VARCHAR(50) NOT NULL,
descripcion_texto TEXT,
descripcion_html TEXT,
imagen VARCHAR(256),
PRIMARY KEY (gama)
);
CREATE TABLE cliente (
codigo_cliente INTEGER NOT NULL,
nombre_cliente VARCHAR(50) NOT NULL,
nombre_contacto VARCHAR(30) DEFAULT NULL,
apellido_contacto VARCHAR(30) DEFAULT NULL,
telefono VARCHAR(15) NOT NULL,
fax VARCHAR(15) NOT NULL,
linea_direccion1 VARCHAR(50) NOT NULL,
linea_direccion2 VARCHAR(50) DEFAULT NULL,
ciudad VARCHAR(50) NOT NULL,
region VARCHAR(50) DEFAULT NULL,
pais VARCHAR(50) DEFAULT NULL,
codigo_postal VARCHAR(10) DEFAULT NULL,
codigo_empleado_rep_ventas INTEGER DEFAULT NULL,
limite_credito NUMERIC(15,2) DEFAULT NULL,
PRIMARY KEY (codigo_cliente),
FOREIGN KEY (codigo_empleado_rep_ventas) REFERENCES empleado (codigo_empleado)
);
CREATE TABLE pedido (
codigo_pedido INTEGER NOT NULL,
fecha_pedido date NOT NULL,
fecha_esperada date NOT NULL,
fecha_entrega date DEFAULT NULL,
estado VARCHAR(15) NOT NULL,
comentarios TEXT,
codigo_cliente INTEGER NOT NULL,
PRIMARY KEY (codigo_pedido),
FOREIGN KEY (codigo_cliente) REFERENCES cliente (codigo_cliente)
);
CREATE TABLE producto (
codigo_producto VARCHAR(15) NOT NULL,
nombre VARCHAR(70) NOT NULL,
gama VARCHAR(50) NOT NULL,
dimensiones VARCHAR(25) NULL,
proveedor VARCHAR(50) DEFAULT NULL,
descripcion text NULL,
cantidad_en_stock SMALLINT NOT NULL,
precio_venta NUMERIC(15,2) NOT NULL,
precio_proveedor NUMERIC(15,2) DEFAULT NULL,
PRIMARY KEY (codigo_producto),
FOREIGN KEY (gama) REFERENCES gama_producto (gama)
);
CREATE TABLE detalle_pedido (
codigo_pedido INTEGER NOT NULL,
codigo_producto VARCHAR(15) NOT NULL,
cantidad INTEGER NOT NULL,
precio_unidad NUMERIC(15,2) NOT NULL,
numero_linea SMALLINT NOT NULL,
PRIMARY KEY (codigo_pedido, codigo_producto),
FOREIGN KEY (codigo_pedido) REFERENCES pedido (codigo_pedido),
FOREIGN KEY (codigo_producto) REFERENCES producto (codigo_producto)
);
CREATE TABLE pago (
codigo_cliente INTEGER NOT NULL,
forma_pago VARCHAR(40) NOT NULL,
id_transaccion VARCHAR(50) NOT NULL,
fecha_pago date NOT NULL,
total NUMERIC(15,2) NOT NULL,
PRIMARY KEY (codigo_cliente, id_transaccion),
FOREIGN KEY (codigo_cliente) REFERENCES cliente (codigo_cliente)
);*/

/*1. Devuelve un listado con el código de oficina y la ciudad donde hay
oficinas.*/

select codigo_oficina, ciudad
from oficina;

/*2. Devuelve un listado con la ciudad y el teléfono de las oficinas de
España.*/

select ciudad, telefono
from oficina
where pais like 'España';

/*3. Devuelve un listado con el nombre, apellidos y email de los empleados
cuyo jefe tiene un código de jefe igual a 7.*/

select nombre, apellido1, apellido2, email
from empleado
where codigo_jefe = 7;

/*4. Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la
empresa.*/

select puesto, nombre, apellido1, apellido2, email
from empleado
where codigo_jefe is null;

/*5. Devuelve un listado con el nombre, apellidos y puesto de aquellos
empleados que no sean representantes de ventas.*/

select puesto, nombre, apellido1, apellido2
from empleado
where not puesto like 'Representante Ventas';

/*6. Devuelve un listado con el nombre de los todos los clientes españoles.*/

select nombre_cliente
from cliente
where pais like 'Spain';

/*7. Devuelve un listado con los distintos estados por los que puede pasar
un pedido.*/

select distinct estado
from pedido;

/*8. Devuelve un listado con el código de cliente de aquellos clientes que
realizaron algún pago en 2008. Tenga en cuenta que deberá eliminar
aquellos códigos de cliente que aparezcan repetidos. Resuelva la
consulta:
● Utilizando la función YEAR de MySQL.
● Utilizando la función DATE_FORMAT de MySQL.
● Sin utilizar ninguna de las funciones anteriores.*/

select distinct codigo_cliente
from pago
where year(fecha_pago)=2008;

select distinct codigo_cliente, date_format(fecha_pago, '%Y')
from pago
where fecha_pago = '2008';

/*9. Devuelve un listado con el código de pedido, código de cliente, fecha
esperada y fecha de entrega de los pedidos que no han sido entregados
a tiempo.*/

select codigo_cliente, codigo_pedido, fecha_esperada, fecha_entrega
from pedido
where (fecha_entrega - fecha_esperada)>0;

/*10.Devuelve un listado con el código de pedido, código de cliente, fecha
esperada y fecha de entrega de los pedidos cuya fecha de entrega ha
sido al menos dos días antes de la fecha esperada.
● Utilizando la función ADDDATE de MySQL.
● Utilizando la función DATEDIFF de MySQL.
● ¿Sería posible resolver esta consulta utilizando el operador de suma + o
resta -?*/

select codigo_cliente, codigo_pedido, fecha_esperada, fecha_entrega
from pedido
where adddate(fecha_entrega, interval 2 day);

/*11. Devuelve un listado de todos los pedidos que fueron rechazados en
2009.*/

select *
from pedido
where estado like 'rechazado' and year(fecha_pedido)=2009;

 /*12.Devuelve un listado de todos los pedidos que han sido entregados en el
mes de enero de cualquier año.*/

select *
from pedido
where month(fecha_entrega)=01;

/*13.Devuelve un listado con todos los pagos que se realizaron en el año 2008
mediante Paypal. Ordene el resultado de mayor a menor.*/

select *
from pago
where year(fecha_pago)=2008 and forma_pago like 'PayPal'
order by total desc;

/*14.Devuelve un listado con todas las formas de pago que aparecen en la
tabla pago. Tenga en cuenta que no deben aparecer formas de pago
repetidas.*/

select distinct forma_pago
from pago;

/*15.Devuelve un listado con todos los productos que pertenecen a la gama
Ornamentales y que tienen más de 100 unidades en stock. El listado deberá
estar ordenado por su precio de venta, mostrando en primer lugar los
de mayor precio.*/

select *
from producto
where gama like 'Ornamentales' and cantidad_en_stock >100
order by precio_venta desc;

/*16.Devuelve un listado con todos los clientes que sean de la ciudad de
Madrid y cuyo representante de ventas tenga el código de empleado 11 o
30*/

select *
from cliente
where ciudad like 'Madrid' and codigo_empleado_rep_ventas = 11 or codigo_empleado_rep_ventas = 30;

/*1.4.5 Consultas multitabla (Composición interna)
Resuelva todas las consultas utilizando la sintaxis de SQL1 y SQL2. Las
consultas con sintaxis de SQL2 se deben resolver con INNER JOIN y NATURAL JOIN.
1. Obtén un listado con el nombre de cada cliente y el nombre y apellido
de su representante de ventas.*/

select nombre_cliente, nombre, apellido1
from cliente
join empleado on cliente.codigo_empleado_rep_ventas=empleado.codigo_empleado;

/*2. Muestra el nombre de los clientes que hayan realizado pagos junto con
el nombre de sus representantes de ventas.*/

select nombre_cliente, nombre, apellido1
from cliente
join empleado on cliente.codigo_empleado_rep_ventas=empleado.codigo_empleado
join pago on pago.codigo_cliente=cliente.codigo_cliente;

/*3. Muestra el nombre de los clientes que no hayan realizado pagos junto
con el nombre de sus representantes de ventas. SIN HACER*/

select nombre_cliente, nombre, apellido1
from cliente
join empleado on cliente.codigo_empleado_rep_ventas=empleado.codigo_empleado
left join pago on pago.codigo_cliente=cliente.codigo_cliente;

/*4. Devuelve el nombre de los clientes que han hecho pagos y el nombre de
sus representantes junto con la ciudad de la oficina a la que pertenece
el representante.*/

select nombre_cliente, nombre, apellido1, oficina.ciudad
from cliente
join empleado on cliente.codigo_empleado_rep_ventas=empleado.codigo_empleado
join pago on pago.codigo_cliente=cliente.codigo_cliente
join oficina on oficina.codigo_oficina=empleado.codigo_oficina;

/*5. Devuelve el nombre de los clientes que no hayan hecho pagos y el
nombre de sus representantes junto con la ciudad de la oficina a la que
pertenece el representante.*/

select nombre_cliente, nombre, apellido1, oficina.ciudad
from cliente
join empleado on cliente.codigo_empleado_rep_ventas=empleado.codigo_empleado
left join pago on pago.codigo_cliente=cliente.codigo_cliente
join oficina on oficina.codigo_oficina=empleado.codigo_oficina;

/*6. Lista la dirección de las oficinas que tengan clientes en Fuenlabrada.SIN HACER*/

select oficina.linea_direccion1, oficina.linea_direccion2
from oficina
join cliente on cliente.ciudad=oficina.ciudad
where cliente.ciudad like 'Fuenlabrada';

/*7. Devuelve el nombre de los clientes y el nombre de sus representantes
junto con la ciudad de la oficina a la que pertenece el representante.*/

select cliente.nombre_cliente, empleado.nombre, oficina.ciudad
from cliente
join empleado on empleado.codigo_empleado=cliente.codigo_empleado_rep_ventas
join oficina on empleado.codigo_oficina=oficina.codigo_oficina;

/*8. Devuelve un listado con el nombre de los empleados junto con el
nombre de sus jefes.SIN HACER*/

select distinct codigo_jefe, nombre 
from empleado

