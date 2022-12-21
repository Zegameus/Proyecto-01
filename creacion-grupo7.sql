# Authors: Azpeleta, David; García, Enrique; Obispo, Jairo

CREATE DATABASE Triatlon; #Crear la base de datos de Triatlon (Con el usuario Root)
GRANT ALL PRIVILEGES ON triatlon.* TO Zegameus; -- Dar permisos al usuario Zegameus en la base de datos del Triatlon


-- con un usario que no sea root
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
CREATE TABLE Campeonatos(
    id_campeonato SMALLINT(255),
    ano YEAR NOT NULL,
    categoría VARCHAR(10) NOT NULL ,
    continente VARCHAR(8) NOT NULL ,
    país       CHAR(3),
    CONSTRAINT campeonatos_pk PRIMARY KEY (id_campeonato),
    CONSTRAINT campeonatos_fk1 FOREIGN KEY (país) REFERENCES Paises(cod_pais)
);
CREATE TABLE Resultados(
    id_campeonato smallint(255),
    id_atleta smallint(255),
    posicion_final 
);