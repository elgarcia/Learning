DROP DATABASE IF EXISTS centre;
CREATE DATABASE IF NOT EXISTS centre;
USE centre;

CREATE TABLE familia(
	id_familia VARCHAR(3),
    descripcio VARCHAR(40) NOT NULL,
    PRIMARY KEY (id_familia)
) engine = INNODB;

CREATE TABLE cicle_formatiu
(	id_cicle_formatiu VARCHAR(4),
	titol VARCHAR(100),
    cicle ENUM('Superior', 'Mitjà'),
    familia_id VARCHAR(3) NOT NULL,
    PRIMARY KEY (id_cicle_formatiu),
    CONSTRAINT fk_cicle_formatiu_familia FOREIGN KEY (familia_id) REFERENCES familia(id_familia)
) engine = INNODB;

CREATE TABLE modul
(	id_modul TINYINT(1),
	id_cicle_formatiu VARCHAR(4),
	titol VARCHAR(60),
    PRIMARY KEY (id_modul, id_cicle_formatiu),
    CONSTRAINT fk_modul_cicleformatiu FOREIGN KEY (id_cicle_formatiu) REFERENCES cicle_formatiu (id_cicle_formatiu)
) engine = INNODB;

CREATE TABLE unitat_formativa
(	id_unitat_formativa TINYINT(1),
	id_modul TINYINT(1),
    id_cicle_formatiu VARCHAR(4),
	titol VARCHAR(100), 
    PRIMARY KEY (id_unitat_formativa, id_cicle_formatiu, id_modul),
    CONSTRAINT fk_unitat_formativa_cicle_formatiu FOREIGN KEY (id_cicle_formatiu) REFERENCES modul (id_cicle_formatiu),
    CONSTRAINT fk_untiat_formativa_modul FOREIGN KEY (id_modul) REFERENCES modul(id_modul)
) engine = INNODB;
