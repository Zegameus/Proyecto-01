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
    constraint paises_uk1 unique (Nombre) #Combinado con el not null, se convierte en
);

CREATE TABLE Atletas (
    Id_atleta smallint(5) unsigned,
    Nombre varchar(30) not null,
    Apellido varchar(30) not null,
    Cod_Pais char(3) not null,
    Anno_nacimiento date not null,
    Entrenador varchar(25), #Hay atletas que no tienen un entrenador (o por lo menos no de forma pública)
    World_ranking smallint(5) unsigned not null,
    Continental_ranking smallint(5) unsigned not null,
    Foto blob,
    Biografia longtext, # Hay atletas que no han dado una biografía
    N_Veces_Podio smallint(3) unsigned default 0 not null, #Hay atletas que no han estado en el podio
    N_Victorias smallint(3) unsigned default 0 not null, # Hay atletas que no han ganado nunca
    Twitter VARCHAR(30),
    Instagram VARCHAR(30),
    Facebook VARCHAR(30),
    constraint atletas_pk primary key (Id_atleta),
    constraint atletas_fk1 foreign key (Cod_Pais) references Paises(Cod_Pais) on delete set null ,
    constraint atletas_uk1 unique (World_ranking), #Solo una persona puede estar en un puesto concreto
    constraint atletas_uk2 unique (Continental_ranking) #Lo mismo que pasa con el anterior
);
CREATE TABLE Campeonatos(
    id_campeonato SMALLINT(5) unsigned,
    anno YEAR NOT NULL,
    continente VARCHAR(8) NOT NULL,
    pais       CHAR(3),
    CONSTRAINT campeonatos_pk PRIMARY KEY (id_campeonato),
    CONSTRAINT campeonatos_fk1 FOREIGN KEY (pais) REFERENCES Paises(cod_pais) on delete set null
);
#Procedemos con los diferentes programas que tiene un campeonato, la sección femenina/masculina de elite, jovenes, U15...
create table Programa (
    Id_Campeonato smallint(5) unsigned,
    Id_Programa smallint(5) unsigned,
    Technical_delegates varchar(40),
    Refree varchar(20), #árbitro
    Distancia_Natacion smallint(40) unsigned,
    Distancia_Bicicleta smallint(40) unsigned,
    Distancia_Carrera smallint(40) unsigned,
    Temp_Aire tinyint(2) unsigned,#En grados centigrados de 0 a 99º
    Temp_Agua tinyint(2) unsigned,
    constraint programa_pk PRIMARY KEY (Id_Campeonato,Id_Programa),
    constraint programa_fk1 FOREIGN KEY (Id_Campeonato) REFERENCES Campeonatos(id_campeonato) on delete cascade

);

CREATE TABLE Resultados(
    id_campeonato smallint(5) unsigned,
    id_programa smallint(5) unsigned,
    id_atleta smallint(5) unsigned,
    posicion_final char(3), #Puede ser un numero o DNF (no ha terminado), DNS (No empezó), DSQ (Descalificado)...
    tiempo_natacion time,
    tiempo_bici time,
    tiempo_carrera time,
    constraint resultados_pk PRIMARY KEY (id_campeonato,id_programa,id_atleta),
    constraint resultados_fk1 FOREIGN KEY (id_atleta) REFERENCES Atletas(Id_atleta) on delete cascade,
    constraint resultados_fk2 FOREIGN KEY (id_campeonato) REFERENCES Programa(Id_Campeonato) on delete cascade
);

CREATE TABLE Entrenadores_atleta(
    Id_atleta smallint(5) unsigned,
    Entrenador varchar(25),
    CONSTRAINT Entrenadores_atleta_pk PRIMARY KEY (Id_atleta,Entrenador),
    constraint entrenadores_atleta_fk1 FOREIGN KEY (Id_atleta) REFERENCES Atletas(Id_atleta) on delete cascade
);

CREATE TABLE jurado(
    id_campeonato smallint(5) unsigned,
    id_programa smallint(5) unsigned,
    jurado      varchar(25),
    Cod_Pais    char(3),
    CONSTRAINT jurado_pk PRIMARY KEY (id_campeonato,id_programa,jurado),
    CONSTRAINT jurado_fk1 FOREIGN KEY (id_campeonato,id_programa) REFERENCES Programa(Id_Campeonato,id_programa) on delete cascade
);

SHOW FULL TABLES FROM Triatlon; -- Ver tablas creadas
