# Activitat 5.2 - Botànic (solució)

-- Tasca 3. Base de dades del Botànic
DROP DATABASE IF EXISTS uf2_act_5_2_botanic;
CREATE DATABASE uf2_act_5_2_botanic;
USE uf2_act_5_2_botanic;

-- Tasca 4. Generació de taules
CREATE TABLE firma_comercial (
    id_firma_comercial VARCHAR(10),
    PRIMARY KEY (id_firma_comercial)
)  ENGINE=INNODB;

CREATE TABLE adob (
    id_adob VARCHAR(20),
    firma_comercial_id VARCHAR(10) NOT NULL,
    tipus ENUM('LLD', 'AI') NOT NULL,
    PRIMARY KEY (id_adob),
    CONSTRAINT fk_adob_firma_comercial
		FOREIGN KEY (firma_comercial_id) REFERENCES firma_comercial (id_firma_comercial)
)  ENGINE=INNODB;
    
CREATE TABLE estacio (
    id_estacio VARCHAR(9),
    PRIMARY KEY (id_estacio),
    CONSTRAINT ck_estacio_id_estacio CHECK (id_estacio IN ('Estiu', 'Hivern', 'Primavera', 'Tardor'))
)  ENGINE=INNODB;
    
CREATE TABLE planta (
    id_planta VARCHAR(20),
    nom_popular VARCHAR(20) NOT NULL,
    estacio_id VARCHAR(9),
    PRIMARY KEY (id_planta),
	CONSTRAINT fk_planta_estacio
		FOREIGN KEY (estacio_id) REFERENCES estacio (id_estacio)
)  ENGINE=INNODB;

CREATE TABLE planta_interior (
    id_planta VARCHAR(20),
    ubicacio VARCHAR(20) NOT NULL,
    temperatura SMALLINT(2) NOT NULL,
    PRIMARY KEY (id_planta),
    CONSTRAINT fk_planta_interior_id_planta FOREIGN KEY (id_planta)
        REFERENCES planta (id_planta)
)  ENGINE=INNODB;

CREATE TABLE planta_exterior (
    id_planta VARCHAR(20),
    tipus ENUM('T', 'P') NOT NULL,
    PRIMARY KEY (id_planta),
    CONSTRAINT fk_planta_exterior_id_planta FOREIGN KEY (id_planta)
        REFERENCES planta (id_planta)
)  ENGINE=INNODB;

CREATE TABLE adob_estacio_planta (
    id_planta VARCHAR(20),
    id_estacio VARCHAR(9),
    id_adob VARCHAR(20),
    quantitat SMALLINT NOT NULL,
    PRIMARY KEY (id_planta , id_estacio , id_adob),
    CONSTRAINT fk_adob_estacio_planta_id_planta FOREIGN KEY (id_planta)
        REFERENCES planta (id_planta),
    CONSTRAINT fk_adob_estacio_planta_id_estacio FOREIGN KEY (id_estacio)
        REFERENCES estacio (id_estacio),
    CONSTRAINT fk_adob_estacio_planta_id_adob FOREIGN KEY (id_adob)
        REFERENCES adob (id_adob),
    CONSTRAINT ck_adob_estacio_planta_quantitat CHECK (quantitat >= 20 AND quantitat <= 100)
)  ENGINE=INNODB;	

-- Tasca 5. Insert
INSERT INTO firma_comercial (id_firma_comercial) VALUES ('Prisadob');
INSERT INTO firma_comercial (id_firma_comercial) VALUES ('Tirsadob');
INSERT INTO firma_comercial (id_firma_comercial) VALUES ('Cirsadob');
INSERT INTO firma_comercial (id_firma_comercial) VALUES ('Uocadob');
INSERT INTO firma_comercial (id_firma_comercial) VALUES ('Intadob');

INSERT INTO adob (id_adob, firma_comercial_id, tipus) VALUES ('Vitaplant','Tirsadob','AI');
INSERT INTO adob (id_adob, firma_comercial_id, tipus) VALUES ('Creixplant','Prisadob','AI');
INSERT INTO adob (id_adob, firma_comercial_id, tipus) VALUES ('Casadob','Tirsadob','AI');
INSERT INTO adob (id_adob, firma_comercial_id, tipus) VALUES ('Superplant','Cirsadob','AI');
INSERT INTO adob (id_adob, firma_comercial_id, tipus) VALUES ('Plantavit','Uocadob','LLD');
INSERT INTO adob (id_adob, firma_comercial_id, tipus) VALUES ('Nutreplant','Cirsadob','LLD');
INSERT INTO adob (id_adob, firma_comercial_id, tipus) VALUES ('Plantadob','Prisadob','LLD');
INSERT INTO adob (id_adob, firma_comercial_id, tipus) VALUES ('Sanexplant','Uocadob','LLD');
INSERT INTO adob (id_adob, firma_comercial_id, tipus) VALUES ('Casaplant','Intadob','AI');
INSERT INTO adob (id_adob, firma_comercial_id, tipus) VALUES ('Superdob','Intadob','LLD');

INSERT INTO estacio (id_estacio) VALUES ('Estiu');
INSERT INTO estacio (id_estacio) VALUES ('Hivern');
INSERT INTO estacio (id_estacio) VALUES ('Primavera');
INSERT INTO estacio (id_estacio) VALUES ('Tardor');

INSERT INTO planta (id_planta, nom_popular, estacio_id) VALUES ('Geranium', 'Gerani', 'Primavera');
INSERT INTO planta (id_planta, nom_popular, estacio_id) VALUES ('Begonia rex', 'Begònia', 'Estiu');
INSERT INTO planta (id_planta, nom_popular, estacio_id) VALUES ('Chrysanthemum', 'Crisantem', 'Estiu');
INSERT INTO planta (id_planta, nom_popular, estacio_id) VALUES ('Euphorbia', 'Poinsetia', 'Hivern');
INSERT INTO planta (id_planta, nom_popular) VALUES ('Hedera', 'Heura');
INSERT INTO planta (id_planta, nom_popular) VALUES ('Codiaeum', 'Croton');
INSERT INTO planta (id_planta, nom_popular, estacio_id) VALUES ('Camellia', 'Camèlia', 'Primavera');
INSERT INTO planta (id_planta, nom_popular, estacio_id) VALUES ('Cyclamen', 'Ciclamen', 'Hivern');
INSERT INTO planta (id_planta, nom_popular, estacio_id) VALUES ('Rosa', 'Roser', 'Primavera');
INSERT INTO planta (id_planta, nom_popular) VALUES ('Polystichum', 'Falguera');
INSERT INTO planta (id_planta, nom_popular, estacio_id) VALUES ('Tulipa', 'Tulipa', 'Primavera');
INSERT INTO planta (id_planta, nom_popular) VALUES ('Philodendron', 'Potus');
INSERT INTO planta (id_planta, nom_popular) VALUES ('Chlorophytum', 'Cintes');
INSERT INTO planta (id_planta, nom_popular) VALUES ('Ficus', 'Ficus Benjamina');
INSERT INTO planta (id_planta, nom_popular) VALUES ('Yuca', 'Yuca');
INSERT INTO planta (id_planta, nom_popular) VALUES ('Cactus', 'Cactus');

INSERT INTO planta_interior (id_planta, ubicacio, temperatura) VALUES ('Euphorbia', 'Llum indirecta', 18);
INSERT INTO planta_interior (id_planta, ubicacio, temperatura) VALUES ('Codiaeum', 'No corrents', 17);
INSERT INTO planta_interior (id_planta, ubicacio, temperatura) VALUES ('Philodendron', 'Llum directa', 15);
INSERT INTO planta_interior (id_planta, ubicacio, temperatura) VALUES ('Ficus', 'Llum indirecta', 19);
INSERT INTO planta_interior (id_planta, ubicacio, temperatura) VALUES ('Yuca', 'Llum directa', 15);

INSERT INTO planta_exterior (id_planta, tipus) VALUES ('Geranium','P');
INSERT INTO planta_exterior (id_planta, tipus) VALUES ('Begonia rex','P');
INSERT INTO planta_exterior (id_planta, tipus) VALUES ('Chrysanthemum','T');
INSERT INTO planta_exterior (id_planta, tipus) VALUES ('Hedera','P');
INSERT INTO planta_exterior (id_planta, tipus) VALUES ('Camellia','P');
INSERT INTO planta_exterior (id_planta, tipus) VALUES ('Cyclamen','P');
INSERT INTO planta_exterior (id_planta, tipus) VALUES ('Rosa','P');
INSERT INTO planta_exterior (id_planta, tipus) VALUES ('Polystichum','P');
INSERT INTO planta_exterior (id_planta, tipus) VALUES ('Tulipa','T');
INSERT INTO planta_exterior (id_planta, tipus) VALUES ('Chlorophytum','P');
INSERT INTO planta_exterior (id_planta, tipus) VALUES ('Cactus','P');

INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Geranium', 'Primavera', 'Casadob', 30);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Geranium', 'Hivern', 'Vitaplant', 20);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Geranium', 'Estiu', 'Sanexplant', 40);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Camellia', 'Hivern', 'Plantavit', 50);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Camellia', 'Primavera', 'Casadob', 75);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Cyclamen', 'Tardor', 'Casadob', 30);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Begonia rex', 'Estiu', 'Casadob', 25);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Chrysanthemum', 'Primavera', 'Superplant', 45);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Begonia rex', 'Primavera', 'Nutreplant', 50);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Codiaeum', 'Estiu','Casadob',60);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Rosa', 'Primavera', 'Casadob', 30);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Rosa', 'Primavera', 'Creixplant', 50);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Polystichum', 'Primavera', 'Casadob', 40);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Polystichum', 'Tardor', 'Plantadob', 20);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Tulipa', 'Hivern', 'Casadob', 40);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Philodendron', 'Primavera', 'Casadob', 40);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Chlorophytum', 'Tardor', 'Casadob', 30);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Chlorophytum', 'Hivern', 'Superplant', 40);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Euphorbia', 'Hivern', 'Casadob', 50);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Euphorbia', 'Hivern', 'Sanexplant', 40);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Hedera', 'Primavera','Casadob', 45);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Codiaeum', 'Primavera', 'Casadob', 50);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Ficus', 'Primavera', 'Casadob', 50);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Yuca', 'Estiu', 'Superdob', 30);
INSERT INTO adob_estacio_planta (id_planta, id_estacio, id_adob, quantitat) VALUES ('Cactus', 'Estiu', 'Superdob', 40);

-- Tasca 6. Modificacions a les taules
ALTER TABLE planta_interior 
	ADD altura ENUM('T', 'A') NOT NULL DEFAULT 'T';
    
ALTER TABLE firma_comercial 
	ADD direccio VARCHAR(30), 
    ADD codi_postal VARCHAR(5),
    ADD email VARCHAR(50);    
    
ALTER TABLE firma_comercial
	ADD CONSTRAINT ck_firma_comercial_email CHECK (email LIKE '%@%' AND email LIKE '%.%');

-- Tasca 7. Update
UPDATE planta_interior SET altura = 'A' WHERE id_planta = 'Codiaeum';

UPDATE adob_estacio_planta SET quantitat = 30 WHERE id_planta = 'Geranium' AND id_estacio = 'Hivern' AND id_adob = 'Vitaplant';
UPDATE adob_estacio_planta SET quantitat = 30 WHERE id_planta = 'Begonia rex' AND id_estacio = 'Estiu' AND id_adob = 'Casadob';
UPDATE adob_estacio_planta SET quantitat = 30 WHERE id_planta = 'Chrysanthemum' AND id_estacio = 'Primavera' AND id_adob = 'Superplant';
UPDATE adob_estacio_planta SET quantitat = 50 WHERE id_planta = 'Begonia rex' AND id_estacio = 'Primavera' AND id_adob = 'Nutreplant';
UPDATE adob_estacio_planta SET quantitat = 50 WHERE id_planta = 'Codiaeum' AND id_estacio = 'Estiu' AND id_adob = 'Casadob';
UPDATE adob_estacio_planta SET quantitat = 35 WHERE id_planta = 'Rosa' AND id_estacio = 'Primavera' AND id_adob = 'Casadob';
UPDATE adob_estacio_planta SET quantitat = 45 WHERE id_planta = 'Philodendron' AND id_estacio = 'Primavera' AND id_adob = 'Casadob';

-- Tasca 8. Delete
DELETE FROM adob_estacio_planta WHERE id_adob = 'Superdob' OR id_adob = 'Casaplant';
DELETE FROM adob WHERE firma_comercial_id = 'Intadob';
DELETE FROM firma_comercial WHERE id_firma_comercial = 'Intadob';
