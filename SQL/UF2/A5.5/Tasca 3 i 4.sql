DROP DATABASE IF EXISTS botanic;
CREATE DATABASE IF NOT EXISTS botanic;
USE botanic;

CREATE TABLE planta(
	id_planta VARCHAR(20),
    nom_popular VARCHAR(20) NOT NULL,
    estacio_floracio VARCHAR(10),
    PRIMARY KEY (id_planta),
    CONSTRAINT planta_id_planta_nom_popular UNIQUE (id_planta, nom_popular),
    CONSTRAINT ck_planta_estacio_floracio 
		CHECK (estacio_floracio = 'Hivern' OR estacio_floracio='Primavera' OR estacio_floracio='Estiu' OR estacio_floracio='Tardor')
) engine = INNODB;

CREATE TABLE adob(
	id_adob VARCHAR(20),
    marca VARCHAR(20) NOT NULL,
    tipus ENUM('AI', 'LLD') NOT NULL,
    PRIMARY KEY (id_adob),
    CONSTRAINT ck_marca 
		CHECK (marca = 'Tirsadob' OR marca = 'Prisadob' OR marca = 'Cirsadob' OR marca='Uocadob' OR marca='Intadob')
) engine = INNODB;

CREATE TABLE estacio(
	id_estacio VARCHAR(15),
    PRIMARY KEY (id_estacio),
    CONSTRAINT ck_estacio_id_estacio
		CHECK (id_estacio= 'Hivern' OR id_estacio='Primavera' OR id_estacio='Estiu' OR id_estacio='Tardor')
) engine = INNODB;

CREATE TABLE planta_exterior(
	id_planta_exterior VARCHAR(20),
    tipus ENUM('T', 'P') NOT NULL,
    PRIMARY KEY (id_planta_exterior),
    CONSTRAINT fk_planta_exterior_planta FOREIGN KEY (id_planta_exterior) REFERENCES planta (id_planta)
) engine = INNODB;

CREATE TABLE planta_interior(
	id_planta_interior VARCHAR(20),
    ubicacio VARCHAR(20) NOT NULL,
    temperatura VARCHAR(10) NOT NULL,
    PRIMARY KEY (id_planta_interior),
    CONSTRAINT fk_planta_interior_planta FOREIGN KEY (id_planta_interior) REFERENCES planta (id_planta),
    CONSTRAINT ck_planta_interior_ubicacio 
		CHECK (ubicacio='Llum directa' OR ubicacio='Llum indirecta' OR ubicacio='No corrents')
) engine = INNODB;

CREATE TABLE planta_estacio_adob(
	id_planta VARCHAR(20),
    id_adob VARCHAR(30),
    estacio_id VARCHAR(15) NOT NULL,
    quantitat SMALLINT,
    PRIMARY KEY(id_planta, id_adob),
    CONSTRAINT fk_planta_estacio_adob_planta FOREIGN KEY (id_planta) REFERENCES planta(id_planta),
    CONSTRAINT fk_planta_estacio_adob_adob FOREIGN KEY (id_adob) REFERENCES adob(id_adob),
    CONSTRAINT fk_planta_estacio_adob_estacio FOREIGN KEY (estacio_id) REFERENCES estacio(id_estacio),
    CONSTRAINT ck_planta_estacio_adob_quantitat CHECK (quantitat >= 20 AND quantitat <= 100)
) engine = INNODB;
    
    
    
    

    
    