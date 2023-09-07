CREATE TABLE IF NOT EXISTS personal(
	id_personal INT AUTO_INCREMENT,
    nom VARCHAR(20) NOT NULL,
    cognoms VARCHAR(40) NOT NULL,
    data_naixement DATE,
    salari NUMERIC(6,2),
    PRIMARY KEY (id_personal),
    CONSTRAINT uk_personal_nom_cognoms UNIQUE (nom, cognoms),
    CONSTRAINT ck_personal_salari CHECK (salari > 0)
) engine = INNODB;

INSERT INTO personal VALUES (null, 'Josep', 'Font', null, 1867.56);
INSERT INTO personal VALUES (null, 'Jordi', 'Vila', '1979/2/20', 1243.06);
INSERT INTO personal VALUES (null, 'Anna', 'Torner', null, 1243.06);
INSERT INTO personal VALUES (null, 'Miquel', 'Ferrando', null, null);
INSERT INTO personal VALUES (null, 'Gerard', 'Codina', '1974/5/27', 1402.89);
INSERT INTO personal VALUES (6, 'Mercè', 'Vila', '1978/6/27', 1765.00);
INSERT INTO personal VALUES (15, 'Marta', 'Casas', null, null);
INSERT INTO personal VALUES (null, 'Joel', 'Codina', '1981/2/14', 1402.89);

SHOW INDEX FROM personal;
