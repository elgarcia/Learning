CREATE TABLE IF NOT EXISTS client(
	nom VARCHAR(20),
    cognoms VARCHAR	(20),
    data_de_naixement DATE,
    tipus CHAR(8) DEFAULT 'Habitual',
    id_client INT(4) AUTO_INCREMENT,
    PRIMARY KEY (id_client),
    CONSTRAINT uk_client_nom_cognoms UNIQUE (nom, cognoms)
) ENGINE=INNODB;



