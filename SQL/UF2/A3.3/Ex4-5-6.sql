CREATE TABLE IF NOT EXISTS departament(
	id_departament SMALLINT(2),
    nom VARCHAR(9),
    localitzacio VARCHAR(10),
    alta DATE,
    PRIMARY KEY (id_departament)
) ENGINE=INNODB;

ALTER TABLE empleat DROP FOREIGN KEY fk_empleat_departament;
ALTER TABLE departament DROP PRIMARY KEY;
ALTER TABLE departament MODIFY localitzacio VARCHAR(10) DEFAULT 'Terrassa'; 
ALTER TABLE departament DROP alta;
ALTER TABLE departament ADD registre DATETIME DEFAULT CURRENT_TIMESTAMP;