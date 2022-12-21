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
    Cod_Pais char(3) not null,
    Anno_nacimiento date,
    Entrenador varchar(25),
    World_ranking smallint(5) unsigned,
    Continental_ranking smallint(5) unsigned,
    Foto blob,
    Biografia longtext,
    N_Veces_Podio smallint(3) unsigned,
    N_Victorias smallint(3) unsigned,
    Twitter VARCHAR(30),
    Instagram VARCHAR(30),
    Facebook VARCHAR(30),
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
create table Programa (
    Id_Campeonato smallint(5) unsigned,
    Id_Programa smallint(5) unsigned,
    Technical_delegates varchar(40),
    Refree varchar(20),
    Distancia_Natacion smallint(40) unsigned,
    Distancia_Bicicleta smallint(40) unsigned,
    Distancia_Carrera smallint(40) unsigned,
    Temp_Aire tinyint(2) unsigned,
    Temp_Agua tinyint(2) unsigned,
    constraint programa_pk PRIMARY KEY (Id_Campeonato,Id_Programa)
);

CREATE TABLE Resultados(
    id_campeonato smallint(5) unsigned,
    id_programa smallint(5) unsigned,
    id_atleta smallint(5) unsigned,
    posicion_final bit(2),
    tiempo_natacion time,
    tiempo_bici time,
    tiempo_carrera time,
    constraint resultados_pk PRIMARY KEY (id_campeonato,id_programa,id_atleta)
);
CREATE TABLE Entrenadores_atleta(
    Id_atleta smallint(5) unsigned,
    Entrenador varchar(25),
    CONSTRAINT Entrenadores_atleta_pk PRIMARY KEY Atletas(Id_atleta)

);
CREATE TABLE jurado(
    id_campeonato smallint(5) unsigned,
    id_programa smallint(5) unsigned,
    jurado      varchar(25),
    Cod_Pais    char(3),
    CONSTRAINT jurado_pk PRIMARY KEY (id_campeonato,id_programa,jurado),
    CONSTRAINT jurado_fk1 FOREIGN KEY (id_campeonato,id_programa) REFERENCES Programa(Id_Campeonato,id_programa)
);

SHOW FULL TABLES FROM Triatlon; -- Ver tablas creadas