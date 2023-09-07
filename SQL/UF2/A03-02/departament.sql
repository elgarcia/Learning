CREATE TABLE IF NOT EXISTS departament(
	numero TINYINT(2),
    nom VARCHAR(9),
    localitzacio VARCHAR(10),
    PRIMARY KEY (numero),
    CONSTRAINT uk_departament_nom UNIQUE (nom)
) ENGINE=INNODB;