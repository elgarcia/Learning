DROP DATABASE IF EXISTS negoci;
CREATE DATABASE negoci;
USE negoci;

CREATE TABLE departament (
	id_departament SMALLINT AUTO_INCREMENT,
	nom VARCHAR(20) NOT NULL,
	ubicacio VARCHAR(20),
	PRIMARY KEY (id_departament)
)	ENGINE=INNODB;

CREATE TABLE distribucio (
	id_departament SMALLINT,
	numero_vehicle SMALLINT NOT NULL,
	PRIMARY KEY (id_departament),
	CONSTRAINT fk_distribucio_departament 
		FOREIGN KEY (id_departament) REFERENCES departament (id_departament)
)	ENGINE=INNODB;

CREATE TABLE entitat_bancaria (
	id_entitat_bancaria SMALLINT AUTO_INCREMENT,
	caducitat DATE NOT NULL,
	cvv SMALLINT(3) NOT NULL,
	numero_compte VARCHAR(24) NOT NULL,
	nom_entitat VARCHAR(20) NOT NULL,
	titular VARCHAR(30) NOT NULL,
	PRIMARY KEY (id_entitat_bancaria)
)	ENGINE=INNODB;

CREATE TABLE logistica (
	id_departament SMALLINT,
	numero_magatzem SMALLINT,
	capacitat INT,
	PRIMARY KEY (id_departament),
	CONSTRAINT fk_logistica_departament 
		FOREIGN KEY (id_departament) REFERENCES departament (id_departament),
	CONSTRAINT ck_capacitat CHECK (capacitat <= 80)
)	ENGINE=INNODB;

CREATE TABLE manteniment (
	id_departament SMALLINT,
	numero_oficina SMALLINT,
	PRIMARY KEY (id_departament),
	CONSTRAINT fk_manteniment_departament 
		FOREIGN KEY (id_departament) REFERENCES departament (id_departament)
)	ENGINE=INNODB;

CREATE TABLE pagina 
(	id_pagina INT AUTO_INCREMENT,
	nom VARCHAR(20),
	url VARCHAR(50) NOT NULL,
	fitxer VARCHAR(20) NOT NULL,
	data_darrer_manteniment DATE,
	departament_id 	SMALLINT NOT NULL,
	data_actual DATE DEFAULT CURRENT_TIMESTAMP,
	pagina_enllacada_id INT,
	PRIMARY KEY (id_pagina),
	CONSTRAINT fk_pagina_departament
		FOREIGN KEY (departament_id) REFERENCES manteniment (id_departament),
	CONSTRAINT fk_pagina_pagina
		FOREIGN KEY (pagina_enllacada_id) REFERENCES pagina (id_pagina),
    CONSTRAINT uk_id_pagina_nom UNIQUE (id_pagina, nom)    
)	ENGINE=INNODB;

CREATE TABLE producte(
	id_producte MEDIUMINT AUTO_INCREMENT,
	nom VARCHAR(50) NOT NULL,
	preu DECIMAL(6,2) NOT NULL,
	descripcio VARCHAR(200),
	pagina_id INT,
	departament_id SMALLINT,
	PRIMARY KEY (id_producte),
	CONSTRAINT fk_producte_pagina 
		FOREIGN KEY (pagina_id) REFERENCES pagina (id_pagina),
	CONSTRAINT fk_producte_departament
		FOREIGN KEY (departament_id) REFERENCES logistica (id_departament),
	CONSTRAINT uk_producte_nom_descripcio UNIQUE (nom, descripcio),
    CONSTRAINT ck_producte_preu CHECK (preu >= 5)
)	ENGINE=INNODB;

CREATE TABLE vehicle(
	id_vehicle SMALLINT AUTO_INCREMENT,
	matricula VARCHAR(7) NOT NULL,
	kms INT,
	PRIMARY KEY (id_vehicle),
	CONSTRAINT ck_vehicle_kms CHECK (kms<300000)
)	ENGINE=INNODB;

CREATE TABLE distribucio_producte_vehicle(
	id_vehicle	SMALLINT,
	id_producte MEDIUMINT,
	departament_id 	SMALLINT,
	id_reparticio	INT NOT NULL,
	PRIMARY KEY (id_vehicle, id_producte),
	CONSTRAINT fk_distribucio_producte_vehicle_distribucio
		FOREIGN KEY (departament_id) REFERENCES distribucio (id_departament),
	CONSTRAINT fk_distribucio_producte_vehicle_producte 
		FOREIGN KEY (id_producte) REFERENCES producte (id_producte),
	CONSTRAINT fk_distribucio_producte_vehicle_vehicle 
		FOREIGN KEY (id_vehicle) REFERENCES vehicle (id_vehicle)
)	ENGINE=INNODB;

CREATE TABLE treballador (
	id_treballador SMALLINT AUTO_INCREMENT,    
	dni VARCHAR(10) NOT NULL,
	nom VARCHAR(10) NOT NULL,
	cognom VARCHAR(20) NOT NULL,
	data_naixement DATE,
	correu VARCHAR(50),
	telefon INT NOT NULL,
	supervisor_id SMALLINT,
	departament_id SMALLINT NOT NULL,
    data_actual DATE DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id_treballador),
	CONSTRAINT fk_treballador_departament
		FOREIGN KEY (departament_id) REFERENCES departament (id_departament),
	CONSTRAINT fk_treballador_treballador
		FOREIGN KEY (supervisor_id) REFERENCES treballador(id_treballador),
	CONSTRAINT uk_treballador_nom_cognom UNIQUE (nom, cognom),
	CONSTRAINT ck_treballador_data_naixement CHECK (TIMESTAMPDIFF(YEAR, data_naixement, data_actual) >= 18)
)	ENGINE=INNODB;

CREATE TABLE usuari (
	id_usuari SMALLINT AUTO_INCREMENT,
	nom_usuari VARCHAR(20),
	contrasenya VARCHAR(20) NOT NULL,
	nom VARCHAR(10) NOT NULL,
	cognoms VARCHAR(20),
	sexe ENUM('M','F'),
	email VARCHAR(50) NOT NULL,
	direccio VARCHAR(20) NOT NULL,
	telefon INT NOT NULL,
	data_naixement DATE,
	data_alta DATE DEFAULT CURRENT_TIMESTAMP,
	pagina_id INT DEFAULT 103,
	PRIMARY KEY (id_usuari),
	CONSTRAINT fk_usuari_pagina
		FOREIGN KEY (pagina_id) REFERENCES pagina (id_pagina),
	CONSTRAINT uk_usuari_nom_cognoms UNIQUE(nom, cognoms),
	CONSTRAINT ck_usuari_contrasenya CHECK (length(contrasenya) >= 8)
)	ENGINE=INNODB;

CREATE TABLE entitat_bancaria_producte_usuari(
	id_usuari SMALLINT NOT NULL,
	id_producte MEDIUMINT NOT NULL,
	entitat_bancaria_id SMALLINT NOT NULL,
	validacio ENUM('OKAY', 'ERROR'),
	PRIMARY KEY (id_usuari, id_producte),
	CONSTRAINT fk_entitat_bancaria_producte_usuari_usuari 
		FOREIGN KEY (id_usuari) REFERENCES usuari (id_usuari),
	CONSTRAINT fk_entitat_bancaria_producte_usuari_producte 
		FOREIGN KEY (id_producte) REFERENCES producte (id_producte),
	CONSTRAINT fk_entitat_bancaria_producte_usuari_entitat_bancaria
		FOREIGN KEY (entitat_bancaria_id) REFERENCES entitat_bancaria (id_entitat_bancaria)
)ENGINE=INNODB;

CREATE INDEX ix_pagina_nom ON pagina (nom);
CREATE INDEX ix_treballador_dni ON treballador(dni);
CREATE INDEX ix_entitat_bancaria_titular ON entitat_bancaria(titular);
ALTER TABLE vehicle ADD INDEX ix_vehicle_matricula (matricula);
ALTER TABLE departament ADD INDEX ix_departament_nom (nom);
ALTER TABLE producte ADD INDEX ix_producte_nom(nom);
