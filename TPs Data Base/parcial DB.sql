/*Punto A*/
create database TorneoFutbol;
use TorneoFutbol;
create table PARTIDOS
(
idPartido int,
idEq1 int,
idEq2 int,
fecha date
);
create table JUGADOR
(	
idJugador int primary key auto_increment not null,
nombre varchar(50),
nacionalidad varchar(50),
idEquipo int
);
create table EQUIPO
(
idEquipo INT PRIMARY KEY AUTO_INCREMENT,
nombre varchar(50)
);
/*Punto B*/
alter table PARTIDOS
modify column idPartido int primary key  auto_increment unique;
alter table partidos
add foreign key(idEq1)references equipo(idEquipo),
add foreign key (idEq2)references equipo(idEquipo);
/*Punto C*/
insert INTO Jugador
values ('Marco','Argentina');
/*Punto D*/
DELETE FROM Jugador where idEquipo=1;
delete from partidos where idequipo=1;
delete from equipo where idEquipo=1;
/*Punto E*/
update partidos
set fecha=null
where fecha='29/09/2022';
/*Punto F*/
select *
from jugador
left join equipo on equipo.idEquipo=jugador.idEquipo/*solo se quiere el extremo izquierdo de un conjunto*/
where idEquipo is null;
/*Punto G*/
select nombre
from equipo
join partidos on equipo.idequipo=partidos.ideq2 or equipo.idequipo=partidos.ideq1
where fecha='10/12/2022';
/*Punto H*/
select nombre
from jugador
join partidos on equipo.idequipo=jugador.idequipo 
join equipo on equipo.idequipo=partidos.ideq2 or equipo.idequipo=partidos.ideq1
where partidos.fecha='2022-12-10'
and equipo.nombre='river';
