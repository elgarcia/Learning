CREATE TABLE IF NOT EXISTS empleat(
	id_empleat SMALLINT(4),
    nom VARCHAR(15),
    cognoms VARCHAR(30),
    treball VARCHAR(10),
    carrec SMALLINT(4),
    contracte DATE,
    salari MEDIUMINT(7),
    comissio MEDIUMINT(7),
    departament SMALLINT(2),
    PRIMARY KEY (id_empleat)
) ENGINE=INNODB;
    
ALTER TABLE empleat MODIFY salari DECIMAL(7,2) NOT NULL;
ALTER TABLE empleat ADD CONSTRAINT uk_empleat_salari_comissio UNIQUE (salari, comissio);
ALTER TABLE empleat CHANGE treball direccio VARCHAR(30);
ALTER TABLE empleat CHANGE departament departament_id INT(2);
ALTER TABLE empleat ADD CONSTRAINT fk_empleat_departament FOREIGN KEY (departament_id) REFERENCES departament (id_departament);