# Authors: Azpeleta, David; García, Enrique; Obispo, Jairo

CREATE DATABASE Triatlon; #Crear la base de datos de Triatlon

CREATE TABLE Paises (
    Cod_pais CHAR(3),
    Nombre VARCHAR(20) not null,
    constraint paises_pk PRIMARY KEY (Cod_pais),
    constraint paises_uk1 unique (Nombre)
);
CREATE TABLE Atletas (
    Id_atleta smallint(255),
    Nombre varchar(30) not null,
    Apellido varchar(30) not null,
    Pais char(3),
    Anno_nacimiento date,
    Entrenador varchar(25),
    World_ranking smallint(255),
    Continental_ranking smallint(255),
    constraint atletas_pk primary key (Id_atleta),
    constraint atletas_uk1 unique (Nombre),
    constraint atletas_fk1 foreign key (Pais) references Paises(Cod_pais)
);
#CREATE TABLE Campeonatos();
#CREATE TABLE Resultados();