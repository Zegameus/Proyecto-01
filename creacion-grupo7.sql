# Authors: Azpeleta, David; García, Enrique; Obispo, Jairo

CREATE DATABASE triatlon; #Crear la base de datos de Triatlon (Con el usuario Root)
USE triatlon; -- Conectarse al esquema triatlon
GRANT ALL PRIVILEGES ON triatlon.* TO Zegameus; -- Dar permisos al usuario Zegameus en la base de datos del Triatlon
GRANT ALL PRIVILEGES ON triatlon.* TO Ja1Rin;
GRANT ALL PRIVILEGES ON triatlon.* TO Azpeleta;

-- con un usario que no sea root
CREATE TABLE Continentes (
    ID_cont DECIMAL(1),
    Nombre varchar(8) NOT NULL ,
    CONSTRAINT cont_pk PRIMARY KEY (ID_cont),
    CONSTRAINT cont_uk1 UNIQUE (Nombre)
);

CREATE TABLE Paises (
    Cod_Pais CHAR(3), #ESP,GER,GBR
    Nombre VARCHAR(30) NOT NULL,
    ID_cont DECIMAL(1),
    CONSTRAINT paises_FK1 FOREIGN KEY (ID_cont) REFERENCES Continentes(ID_cont),
    CONSTRAINT paises_PK PRIMARY KEY (Cod_Pais),
    CONSTRAINT paises_UK1 UNIQUE (Nombre),#Combinado con el NOT NULL, se convierte en
    CONSTRAINT paises_CK1 CHECK ( Cod_Pais != '' AND Nombre != '' )
);

CREATE TABLE Atletas (
    Id_atleta DECIMAL(4) UNSIGNED,
    Nombre VARCHAR(30) NOT NULL,
    Segundo_Nombre varchar(30),
    Apellido VARCHAR(30) NOT NULL,
    Cod_Pais CHAR(3) NOT NULL,
    Anno_nacimiento YEAR NOT NULL,
    Entrenador VARCHAR(25), #Hay atletas que no tienen un entrenador (o por lo menos no de forma pública)
    Foto BLOB,
    Biografia LONGTEXT, # Hay atletas que no han dado una biografía
    N_Veces_Podio DECIMAL(2) UNSIGNED DEFAULT 0 NOT NULL, #Hay atletas que no han estado en el podio
    N_Victorias DECIMAL(2) UNSIGNED DEFAULT 0 NOT NULL, # Hay atletas que no han ganado nunca
    Twitter VARCHAR(30),
    Instagram VARCHAR(30),
    Facebook VARCHAR(30),
    CONSTRAINT atletas_PK PRIMARY KEY (Id_atleta),
    CONSTRAINT atletas_FK1 FOREIGN KEY (Cod_Pais) REFERENCES Paises(Cod_Pais) ON DELETE CASCADE ,
    CONSTRAINT atletas_CK1 CHECK ( Nombre != '' AND Apellido != '' ) -- Esto es para evitar introducir datos vacios
);
CREATE TABLE Campeonatos(
    id_campeonato DECIMAL(4) UNSIGNED,
    anno YEAR NOT NULL,
    ID_cont DECIMAL(1) NOT NULL,
    cod_pais       CHAR(3),
    CONSTRAINT campeonatos_PK PRIMARY KEY (id_campeonato),
    CONSTRAINT campeonatos_FK1 FOREIGN KEY (cod_pais) REFERENCES Paises(cod_pais) ON DELETE CASCADE,
    CONSTRAINT campeonatos_FK2 FOREIGN KEY (ID_cont) REFERENCES Continentes(ID_cont)
);
#Procedemos con los diferentes programas que tiene un campeonato, la sección femenina/masculina de elite, jovenes, U15...
create table Programa (
    Id_Campeonato DECIMAL(4) UNSIGNED,
    Id_Programa DECIMAL(4) UNSIGNED,
    Technical_delegates VARCHAR(40),
    Refree VARCHAR(20), #árbitro
    Distancia_Natacion DECIMAL(4) UNSIGNED,
    Distancia_Bicicleta DECIMAL(2) UNSIGNED,
    Distancia_Carrera DECIMAL(2,1) UNSIGNED,
    Temp_Aire DECIMAL(3,2) UNSIGNED,#En grados centigrados de 0 a 99º
    Temp_Agua DECIMAL(3,2) UNSIGNED,
    CONSTRAINT programa_PK PRIMARY KEY (Id_Campeonato,Id_Programa),
    CONSTRAINT programa_FK1 FOREIGN KEY (Id_Campeonato) REFERENCES Campeonatos(id_campeonato) ON DELETE CASCADE

);

CREATE TABLE Resultados(
    id_campeonato DECIMAL(4) UNSIGNED,
    id_programa DECIMAL(5) UNSIGNED,
    id_atleta DECIMAL(5) UNSIGNED,
    posicion_final CHAR(3), #Puede ser un numero o DNF (no ha terminado), DNS (No empezó), DSQ (Descalificado)...
    tiempo_natacion TIME,
    tiempo_bici TIME,
    tiempo_carrera TIME,
    CONSTRAINT resultados_PK PRIMARY KEY (id_campeonato,id_programa,id_atleta),
    CONSTRAINT resultados_FK1 FOREIGN KEY (id_atleta) REFERENCES Atletas(Id_atleta) ON DELETE CASCADE,
    CONSTRAINT resultados_FK2 FOREIGN KEY (id_campeonato,id_programa) REFERENCES Programa(Id_Campeonato,Id_Programa) ON DELETE CASCADE,
    CONSTRAINT resultados_CK1 CHECK ( posicion_final >= 0 AND posicion_final <= 999 OR posicion_final = 'DNF' OR posicion_final = 'DNS' OR posicion_final = 'DSQ' )
);

CREATE TABLE Entrenadores_atleta(
    Id_atleta DECIMAL(5) UNSIGNED,
    Entrenador VARCHAR(30),
    CONSTRAINT Entrenadores_atleta_PK PRIMARY KEY (Id_atleta,Entrenador),
    CONSTRAINT entrenadores_atleta_FK1 FOREIGN KEY (Id_atleta) REFERENCES Atletas(Id_atleta) ON DELETE CASCADE
);

CREATE TABLE jurado(
    id_campeonato DECIMAL(4) UNSIGNED,
    id_programa DECIMAL(5) UNSIGNED,
    jurado      VARCHAR(25),
    Cod_Pais    CHAR(3),
    CONSTRAINT jurado_PK PRIMARY KEY (id_campeonato,id_programa,jurado),
    CONSTRAINT jurado_FK1 FOREIGN KEY (id_campeonato,id_programa) REFERENCES Programa(Id_Campeonato,id_programa) ON DELETE CASCADE
);

SHOW FULL TABLES FROM Triatlon; -- Ver tablas creadas
-- drop table jurado,entrenadores_atleta,resultados,programa,campeonatos,atletas,paises,continentes;