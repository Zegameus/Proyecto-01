# Authors: Azpeleta, David; García, Enrique; Obispo, Jairo

CREATE DATABASE Triatlon; #Crear la base de datos de Triatlon

CREATE TABLE Paises (
    Cod_pais CHAR(3),
    Nombre VARCHAR(20) not null,
    constraint paises_pk PRIMARY KEY (Cod_pais),
    constraint paises_uk1 unique (Nombre)
);
#CREATE TABLE Atletas ();
#CREATE TABLE Campeonatos();
#CREATE TABLE Resultados();