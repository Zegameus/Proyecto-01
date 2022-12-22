USE triatlon;
-- Insertar Paises
-- A
INSERT INTO paises values ('AFG','Afganistan'),
                          ('ALB','Albania'),
                          ('ALG','Algeria'),
                          ('ASA','Samoa Americana'),
                          ('AND','Andorra'),
                          ('ANG','Angola'),
                          ('AIA','Anguila'),
                          ('ANT','Anigua y Barbuda'),
                          ('ARG','Argentina'),
                          ('ARM','Armenia'),
                          ('ARU','Aruba'),
                          ('ANZ','Australasia'),
                          ('AUS','Australia'),
                          ('AUT','Austria'),
                          ('AZE','Azerbaiyán');
-- B
INSERT INTO paises values ('BAH','Bahamas'),
                          ('BRN','Baréin'),
                          ('BAN','Bangladesh'),
                          ('BAR','Barbados'),
                          ('BLR','Bielorrusia'),
                          ('BEL','Bélgica'),
                          ('BIZ','Belize'),
                          ('BEN','Benin'),
                          ('BER','Bermudas'),
                          ('BHU','Bután'),
                          ('BOH','Bohemia'),
                          ('BOL','Bolivia'),
                          ('BIH','Bosnia-Herzegovina'),
                          ('BOT','Botswana'),
                          ('BRA','Brasil'),
                          ('BRU','Brunei'),
                          ('BUL','Bulgaria'),
                          ('BUR','Brukina Faso'),
                          ('BDI','Burundi');
-- C
INSERT INTO paises values ('CAM','Cambodia'),
                          ('CMR','Camerún'),
                          ('CAN','Canadá');
-- E
-- F
INSERT INTO paises values ('FIJ','Fiji');
-- G
INSERT INTO paises VALUES ('GER','Alemania');
-- H
-- I
-- J
-- K
-- L
-- M
-- N
-- O
-- P
-- Q
-- R
-- S
INSERT INTO paises VALUES ('SAM', 'Samoa'),('SOL', 'Islas Salomon'),('SWE','Suecia');
-- T
-- U
-- V W X Y Z

-- Atletas
INSERT INTO atletas VALUES (1,'Jett Lee','Curteis','SAM',2005,NULL,502,43,NULL,NULL,1,1,NULL,NULL,NULL),
                           (2,'Nikotimasi Tu''enadi','Croker','FIJ',2004,NULL,515,46,NULL,NULL,1,0,NULL,NULL,NULL);
INSERT INTO atletas value (3,'Christian Zadkiel','Rokoua','FIJ',2006,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL);
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