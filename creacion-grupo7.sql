# Authors: Azpeleta, David; García, Enrique; Obispo, Jairo

CREATE DATABASE Triatlon; #Crear la base de datos de Triatlon (Con el usuario Root)
GRANT ALL PRIVILEGES ON triatlon.* TO Zegameus; -- Dar permisos al usuario Zegameus en la base de datos del Triatlon
GRANT ALL PRIVILEGES ON triatlon.* TO Ja1Rin;
GRANT ALL PRIVILEGES ON triatlon.* TO Azpeleta;

-- con un usario que no sea root
CREATE TABLE Paises (
    Cod_Pais CHAR(3), #ESP,GER,GBR
    Nombre VARCHAR(20) not null,
    constraint paises_pk PRIMARY KEY (Cod_Pais),
    constraint paises_uk1 unique (Nombre)
);
CREATE TABLE Atletas (
    Id_atleta smallint(5) unsigned,
    Nombre varchar(30) not null,
    Apellido varchar(30) not null,
    Cod_Pais char(3),
    Anno_nacimiento date,
    Entrenador varchar(25),
    World_ranking smallint(5) unsigned,
    Continental_ranking smallint(5) unsigned,

    constraint atletas_pk primary key (Id_atleta),
    constraint atletas_uk1 unique (Nombre),
    constraint atletas_fk1 foreign key (Cod_Pais) references Paises(Cod_Pais)
);
CREATE TABLE Campeonatos(
    id_campeonato SMALLINT(5) unsigned,
    ano YEAR NOT NULL,
    categoría VARCHAR(10) NOT NULL ,
    continente VARCHAR(8) NOT NULL ,
    pais       CHAR(3),
    CONSTRAINT campeonatos_pk PRIMARY KEY (id_campeonato),
    CONSTRAINT campeonatos_fk1 FOREIGN KEY (pais) REFERENCES Paises(cod_pais)
);
CREATE TABLE Resultados(
    id_campeonato smallint(5) unsigned,
    id_atleta smallint(5) unsigned,
    posicion_final
);
GRANT ALL PRIVILEGES ON triatlon.* TO Azpeleta;

SHOW FULL TABLES FROM Triatlon;