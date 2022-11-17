/*Insertar fila*/
insert INTO departamento(nombre)
values ('Sistemas').('Ventas');

SELECT idDepartamento, idDirector, nombre
FROM departamento; /*siempre van ambos y en este orden*/

/*Actualiza fila completa*/
UPDATE departamento
SET nombre= 'RRHH'      /*Dato a modificar*/
WHERE idDepartamento=3  /*Actualiza el nombre de una columna especificada*/

/*borrar fila completa*/
DELETE FROM departamento /*borra todas las filas*/
where idDepartamento=3

insert into empleado(nombre,dedicacion,iddep, idcategoria)
values
('JuanPerez','full',1,null),
 ('Juan Gomez','full',null,1),
 ('Ana Lopez','part'1,1);
 
 /*Buscador*/
 select *
 from empleado
 where nombre like 'Juan %'/*Busca dato especifico por su valor en todas las filas*/
 where ipDep>=1 and ipDep<9/* Busca por rango*/
 
 /*Borrar dato de una fila*/
update empleado
set idCategoria=null
where idEmpleado=3
 
 /*Para traer nulos*/
  select *
 from empleado
 where idCategoria is null/* Operador is para comparar con null*/
 
 /*FUNCION concatenar datos de diferentes columnas*/
 select concat(nombre. '-',dedicacion) as nombreDedic
 from empleado
 
 /*Nueva columna con operacion logica*/
 select idempleado, nombre (sueldo+ paritaria)  as aumento/*columna ficticia*/
 from empleado
 
 /*Ordenar por orden segun columna*/
  select idempleado, nombre, sueldo, sueldo* as aumento
 from empleado
 order by nombre/* desc lo invierte*/
 
 /*Selecciona datos de una tabla vinculadon solo por la identidad que comparte LEFT*/ 
 select *
 from empleado
 left join departamento on empleado.idDep = departamento.idDepartamento/*tabla y columna*/
 
 /*Selecciona solo los datos vinculadon solo por la identidad que comparte INNER*/  
  select e.idEmpleado, e.idDep, d.nombre
 from empleado e/*esa letra es un alias*/
 inner join departamento d on e.idDep = d.idDepartamento/*se unen,  tabla y columna*/
 where idDirector= 1
 
  /*Selecciona los datos que no estan relacionados por la identidad que comparte LEFT- IS NULL*/ 
 select *
 from empleado e/*esa letra es un alias*/
 left join departamento d on e.idDep = d.idDepartamento/*se unen,  tabla y columna*/
 where d.idDepartamento is null;
 
 /*Trae datos seleccionados inclusive null. SUMAR VOLUMEN*/
select *
from empleado e/*esa letra es un alias*/
cross join departamento d on e.idDep = d.idDepartamento/*devuelve datos de departamento buscados en la comparacion de id,  tabla y columna*/
 