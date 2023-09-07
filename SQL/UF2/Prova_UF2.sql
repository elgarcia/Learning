#Tasca 1
DROP DATABASE IF EXISTS llars_infants;
CREATE DATABASE IF NOT EXISTS llars_infants;
USE llars_infants;

#Tasca 2
CREATE TABLE material
(	id_material INT AUTO_INCREMENT,
	nom VARCHAR (20) NOT NULL,
    PRIMARY KEY (id_material)
) ENGINE = INNODB;

CREATE TABLE capacitat
(	id_capacitat INT AUTO_INCREMENT,
	nom VARCHAR (50) NOT NULL,
	PRIMARY KEY (id_capacitat)
) ENGINE = INNODB;

CREATE TABLE activitat
(	id_activitat INT AUTO_INCREMENT,
	nom VARCHAR(50) NOT NULL,
    descripcio VARCHAR(100),
    capacitat_id INT NOT NULL,
    PRIMARY KEY (id_activitat),
    CONSTRAINT fk_activitat_capacitat FOREIGN KEY (capacitat_id) REFERENCES capacitat (id_capacitat)
) ENGINE = INNODB;

CREATE TABLE edifici
(	id_edifici INT AUTO_INCREMENT,
	nom VARCHAR(4) NOT NULL,
    adreca VARCHAR(50),
    PRIMARY KEY (id_edifici)
) ENGINE = INNODB;

CREATE TABLE monitor
(	id_monitor VARCHAR(3),
	nom VARCHAR(60) NOT NULL,
	titulacio VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_monitor)
) ENGINE = INNODB;

CREATE TABLE aula
(	id_aula VARCHAR(3),
	id_edifici INT NOT NULL,
	nom VARCHAR(20),
    descripcio VARCHAR(50),
    monitor_id VARCHAR(3) NOT NULL,
    PRIMARY KEY (id_aula, id_edifici),
    CONSTRAINT fk_aula_id_edifici FOREIGN KEY (id_edifici) REFERENCES edifici(id_edifici),
    CONSTRAINT fk_aula_monitor_id FOREIGN KEY (monitor_id) REFERENCES monitor(id_monitor)
) ENGINE = INNODB;

CREATE TABLE infant
(	id_infant MEDIUMINT AUTO_INCREMENT,
	nom VARCHAR (20) NOT NULL,
    cognom VARCHAR (40) NOT NULL,
    sexe ENUM('M', 'F') NOT NULL,
    data_naixement DATE NOT NULL,
    telefon INT NOT NULL,
    discapacitat SMALLINT,
    aula_id VARCHAR(3) NOT NULL,
    edifici_id INT NOT NULL,
    PRIMARY KEY (id_infant),
    CONSTRAINT fk_infant_aula_id FOREIGN KEY (aula_id) REFERENCES aula (id_aula),
    CONSTRAINT fk_infant_edifici_id FOREIGN KEY (edifici_id) REFERENCES aula(id_edifici),
    CONSTRAINT uk_infant_nom_cognom UNIQUE (nom, cognom)
) ENGINE = INNODB;

CREATE TABLE activitat_material
(	id_activitat INT,
	id_material INT,
    unitats SMALLINT,
    PRIMARY KEY (id_activitat, id_material),
    CONSTRAINT fk_activitat_material_id_activitat
		FOREIGN KEY (id_activitat) REFERENCES activitat(id_activitat),
	CONSTRAINT fk_activitat_material_id_material
		FOREIGN KEY (id_material) REFERENCES material(id_material)
) ENGINE = INNODB;

CREATE TABLE activitat_infant
(	id_activitat INT,
	id_infant MEDIUMINT,
    PRIMARY KEY (id_activitat, id_infant),
    CONSTRAINT fk_activitat_infant_id_activitat
		FOREIGN KEY (id_activitat) REFERENCES activitat(id_activitat),
	CONSTRAINT fk_activitat_infant_id_infant
		FOREIGN KEY (id_infant) REFERENCES infant(id_infant)
) ENGINE = INNODB;

ALTER TABLE infant AUTO_INCREMENT = 100;

#Tasca 3
CREATE INDEX ix_infant_data_naixement ON infant(data_naixement);
ALTER TABLE edifici MODIFY nom VARCHAR(10);

#Tasca 4
INSERT INTO capacitat (nom) VALUES ('Artistica');
INSERT INTO capacitat (nom) VALUES ('Sensorial');
INSERT INTO capacitat (nom) VALUES ('Empatia');

INSERT INTO activitat (nom, descripcio, capacitat_id) VALUES ('Pinta i coloreja', 'Acolorir dibuixos de paper', 1);
INSERT INTO activitat (nom, descripcio, capacitat_id) VALUES ('Toca el bosc', 'Experimentar manualment amb elements del bosc', 2);
INSERT INTO activitat (nom, descripcio, capacitat_id) VALUES ('Animals', 'Jugar a imitar els moviments i sons de diferents tipus d´animals', 3);

INSERT INTO material (nom) VALUES ('Paper');
INSERT INTO material (nom) VALUES ('Colors');
INSERT INTO material (nom) VALUES ('Tronc');
INSERT INTO material (nom) VALUES ('Fulla');

INSERT INTO activitat_material VALUES (1, 1, 1);
INSERT INTO activitat_material VALUES (1, 2, 5);
INSERT INTO activitat_material VALUES (2, 3, 1);
INSERT INTO activitat_material VALUES (2, 4, 2);

INSERT INTO monitor VALUES ('T10', 'Candida Portillo', 'CFGS Tecnica d´educacio infantil');
INSERT INTO monitor VALUES ('M21', 'Maria Elisa Pedraza', 'Grau Universitari Mestra en educacio infantil');
INSERT INTO monitor VALUES ('M20', 'Nour Baez', 'Grau Universitari Mestra en educació infantil');
INSERT INTO monitor VALUES ('T11', 'Maria Josefa Maza', 'CFGS Tècnica d´educació infantil');
INSERT INTO monitor VALUES ('T12', 'Elisabet Buendia', 'CFGS Tècnica d´educació infantil');
INSERT INTO monitor VALUES ('M22', 'Maria Lourdes Gago', 'Grau Universitari Mestra en educació infantil');

INSERT INTO edifici (nom, adreca) VALUES ('Blau', 'C\Sant Pau, 11');
INSERT INTO edifici (nom, adreca) VALUES ('Groc', 'C\Sant Joan, 76');

INSERT INTO aula VALUES ('A01', 1, 'Tigres', 'Grup dels petits', 'T11');
INSERT INTO aula VALUES ('A02', 1, 'Lleons', 'Grup dels grans', 'M20');
INSERT INTO aula VALUES ('A01', 2, 'Tigres', 'Grup dels petits', 'T12');
INSERT INTO aula VALUES ('A02', 2, 'Lleons', 'Grup dels grans', 'M22');

INSERT INTO infant (nom, cognom, discapacitat, sexe, data_naixement, telefon, aula_id, edifici_id) VALUES ('Pascual', 'Gonzalo Ureña', 50, 'M', '2021/11/29', 932401859, 'A01', 1);
INSERT INTO infant (nom, cognom, discapacitat, sexe, data_naixement, telefon, aula_id, edifici_id) VALUES ('Maria', 'Begoña Exposito', null, 'F', '2020/09/01', 932814344,'A02', 2);
INSERT INTO infant (nom, cognom, discapacitat, sexe, data_naixement, telefon, aula_id, edifici_id) VALUES ('Candida', 'Fernández Vizcaino', 10, 'F', '2020/01/01', 602824052, 'A02', 2);
INSERT INTO infant (nom, cognom, discapacitat, sexe, data_naixement, telefon, aula_id, edifici_id) VALUES ('Fermin', 'Mera Duque', null, 'M', '2021/06/05', 627037030, 'A01', 2);
INSERT INTO infant (nom, cognom, discapacitat, sexe, data_naixement, telefon, aula_id, edifici_id) VALUES ('Alma', 'del Castillo Polo', null, 'F', '2020/03/18', 609995715, 'A02', 1);
INSERT INTO infant (nom, cognom, discapacitat, sexe, data_naixement, telefon, aula_id, edifici_id) VALUES ('Juan', 'Gil Manzano', 15, 'M', '2021/06/06', 937589966,  'A01', 2);

INSERT INTO activitat_infant VALUES (1, 103);
INSERT INTO activitat_infant VALUES (1, 105);
INSERT INTO activitat_infant VALUES (3, 101);
INSERT INTO activitat_infant VALUES (3, 102);

#Tasca 5
DELETE FROM activitat_infant WHERE id_infant IN (105);
DELETE FROM infant WHERE id_infant IN (105);

#Tasca 6
UPDATE infant SET discapacitat = 12 WHERE id_infant IN (102);

#Tasca 7.1
SELECT nom, cognom, data_naixement 
FROM infant;

#Tasca 7.2
SELECT MIN(discapacitat) AS discapacitat_menor, MAX(discapacitat) AS discapacitat_major
FROM infant;

#Tasca 7.3
SELECT nom, cognom
FROM infant
WHERE discapacitat IS NULL;

#Tasca 7.4
SELECT monitor_id
FROM aula
WHERE id_edifici = 1;

#Tasca 7.5
SELECT COUNT(id_material) AS material, SUM(unitats) AS unitats
FROM activitat_material
WHERE id_activitat = 1;







    