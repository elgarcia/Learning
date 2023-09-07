CREATE TABLE IF NOT EXISTS ciutat(
	comarca VARCHAR(25) NOT NULL,
    provincia VARCHAR(25) NOT NULL,
    habitants INT(7),
    id_ciutat VARCHAR(25),
    PRIMARY KEY (id_ciutat)
) ENGINE=INNODB;