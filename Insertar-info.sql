USE triatlon;
-- Continentes

INSERT INTO continentes VALUES (1,'Africa'),(2,'Americas'),(3,'Asia'),(4,'Europa'),(5,'Oceania');
-- Insertar Paises
-- A
INSERT INTO paises VALUES ('AFG','Afganistan',3),
                          ('ALB','Albania',4),
                          ('ALG','Algeria',1),
                          ('ASA','Samoa Americana',5),
                          ('AND','Andorra',4),
                          ('ANG','Angola',1),
                          ('AIA','Anguila',2),
                          ('ANT','Anigua y Barbuda',2),
                          ('ARG','Argentina',2),
                          ('ARM','Armenia',4),
                          ('ARU','Aruba',2),
                          ('ANZ','Australasia',5),
                          ('AUS','Australia',5),
                          ('AUT','Austria',4),
                          ('AZE','Azerbaiyán',3);
-- B
INSERT INTO paises VALUES ('BAH','Bahamas',2),
                          ('BRN','Baréin',3),
                          ('BAN','Bangladesh',3),
                          ('BAR','Barbados',2),
                          ('BLR','Bielorrusia',4),
                          ('BEL','Bélgica',4),
                          ('BIZ','Belize',2),
                          ('BEN','Benin',1),
                          ('BER','Bermudas',2),
                          ('BHU','Bután',3),
                          ('BOL','Bolivia',2),
                          ('BIH','Bosnia-Herzegovina',4),
                          ('BOT','Botswana',1),
                          ('BRA','Brasil',2),
                          ('BRU','Brunei',3),
                          ('BUL','Bulgaria',4),
                          ('BUR','Burkina Faso',1),
                          ('BDI','Burundi',1);
-- C
INSERT INTO paises VALUES ('CAM','Cambodia',3),
                          ('CMR','Camerún',1),
                          ('CAN','Canadá',2),
                          ('CHI','Chile',2),('COL','Colombia',2),('CRC','Costa Rica',2),('CUB','Cuba',2);
-- D
INSERT INTO paises VALUES ('DOM','República Dominicana',2);
-- E
INSERT INTO paises VALUES ('ESP','España',4),('ECU','Ecuador',2),('ESA','El Salvador',2);
-- F
INSERT INTO paises VALUES ('FIJ','Fiji',5);
-- G
INSERT INTO paises VALUES ('GER','Alemania',4),('GUA','Guatemala',2);
-- H
-- I
-- J
INSERT INTO paises VALUES ('JAM','Jamaica',2);
-- K
-- L
-- M
INSERT INTO paises VALUES ('MEX','Mexico',2);
-- N
-- O
-- P
INSERT INTO paises VALUES ('PAN','Panamá',2),('PUR','Puerto Rico',2);
-- Q
-- R
-- S
INSERT INTO paises VALUES ('SAM', 'Samoa',5),('SOL', 'Islas Salomon',5),('SWE','Suecia',4);
-- T
-- U
INSERT INTO paises VALUES ('URU','Uruguay',2),('USA','Estados Unidos de América',2);
-- V
INSERT INTO paises VALUES ('VEN','Venezuela',2);
-- W X Y Z

-- Atletas
INSERT INTO atletas VALUES (1,'Jett Lee','Curteis','SAM',2005,NULL,502,43,NULL,NULL,1,1,NULL,NULL,NULL),
                           (2,'Nikotimasi Tu''enadi','Croker','FIJ',2004,NULL,515,46,NULL,NULL,1,0,NULL,NULL,NULL);
INSERT INTO atletas VALUES (3,'Christian Zadkiel','Rokoua','FIJ',2006,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL);
INSERT INTO atletas VALUES (4, 'Gabriel','Sandör','SWE',1996,NULL,120,65,NULL,NULL,18,12,'@SandorGabriel','@gabrielsandor','GabrielSandorTri'),
                           (5,'Justus','Nieschlag','GER',1992,'Dan Lorang',116,63,NULL,NULL,17,9,'@JustusNieschlag','@justus.nieschlag','JustusNieschlag');
-- Entrenadores
select *
from atletas;
-- Campeonatos
INSERT INTO campeonatos(id_campeonato, anno, continente, pais) VALUES (1,2022,'Oceania','FIJ');
-- Programas

-- Jurados

-- Resultados


select * from paises;