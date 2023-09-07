INSERT INTO familia VALUES ('INF', 'Informàtica i comunicació');
INSERT INTO familia VALUES ('ADM', 'Administració i gestió');
INSERT INTO familia VALUES ('COM', 'Comerç i màrqueting');
INSERT INTO familia VALUES ('HOT', 'Hoteleria i turisme');
INSERT INTO familia VALUES ('EE', 'Electricitat i electrònica');

INSERT INTO cicle_formatiu VALUES ('SMIX', 'Sistemes microinformàtics i xarxes', 'Mitjà', 'INF');
INSERT INTO cicle_formatiu VALUES ('ASIX', 'Administració de sistemes informàtics en la xarxa', 'Superior', 'INF');
INSERT INTO cicle_formatiu VALUES ('DAM', 'Desenvolupament d’aplicacions multiplataforma', 'Superior', 'INF');
INSERT INTO cicle_formatiu VALUES ('DAW', 'Desenvolupament d’aplicacions web', 'Superior', 'INF');

INSERT INTO modul VALUES (1,'SMIX','Muntatge i manteniment d’equips');
INSERT INTO modul VALUES (2,'SMIX', 'Sistemes operatius monolloc');
INSERT INTO modul VALUES (1,'ASIX', 'Implantació de sistemes operatius');
INSERT INTO modul VALUES (2,'ASIX', 'Gestió de base de dades');
INSERT INTO modul VALUES (3,'ASIX', 'Programació bàsica');
INSERT INTO modul VALUES (4,'ASIX', 'Llenguatge de marques');

INSERT INTO unitat_formativa VALUES (1,1, 'SMIX', 'Elecrtricitat a l’ordinador');
INSERT INTO unitat_formativa VALUES (2, 1, 'SMIX', 'Components d’un equip microinformàtic');
INSERT INTO unitat_formativa VALUES (3, 1, 'SMIX', 'Muntatge d’un equip microinformàtic');
INSERT INTO unitat_formativa VALUES (1, 2, 'SMIX', 'Introducció als sistemes operatius');
INSERT INTO unitat_formativa VALUES (2, 2, 'SMIX', 'Sistemes operatius propietaris');
INSERT INTO unitat_formativa VALUES (1, 1, 'ASIX', 'Instal·lació, configuració i explotació del sistema informàtic');
INSERT INTO unitat_formativa VALUES (2, 1, 'ASIX', 'Gestió de la informació i de recursos en una xarxa');
INSERT INTO unitat_formativa VALUES (1, 2, 'ASIX', 'Introducció a les bases de dades');
INSERT INTO unitat_formativa VALUES (2, 2, 'ASIX', 'Llenguatges SQL: DML i DDL');
INSERT INTO unitat_formativa VALUES (1,3, 'ASIX', 'Programació estructurada');
INSERT INTO unitat_formativa VALUES (1, 4, 'ASIX', 'Programació amb XML');