# Authors: Azpeleta, David; García, Enrique; Obispo, Jairo

CREATE DATABASE Triatlon; #Crear la base de datos de Triatlon

CREATE TABLE Paises (
    Cod_pais CHAR(3) constraint paises_pk primary key,
    Nombre VARCHAR(20) constraint paises_uk1 unique constraint paises_nn1 not null
);
#CREATE TABLE Atletas ();
#CREATE TABLE Campeonatos();
#CREATE TABLE Resultados();