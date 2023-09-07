/*
UF2PA2: Prova d'avaluació Script_dades.sql
*/

DROP DATABASE IF EXISTS uf2_pa2_pelicula;
CREATE DATABASE uf2_pa2_pelicula;
USE uf2_pa2_pelicula;

-- Generació de taules
CREATE TABLE actor (
    id_actor INT AUTO_INCREMENT,
    nom VARCHAR(20) NOT NULL,
    cognoms VARCHAR(40) NOT NULL,
    genere ENUM('H', 'D') NOT NULL,
    PRIMARY KEY (id_actor),
    CONSTRAINT uk_actor_nom_cognoms UNIQUE (nom, cognoms)
)  ENGINE=INNODB;

CREATE TABLE director (
    id_director INT AUTO_INCREMENT,
    nom VARCHAR(20) NOT NULL,
    cognoms VARCHAR(40) NOT NULL,
    PRIMARY KEY (id_director),
    CONSTRAINT uk_director_nom_cognoms UNIQUE (nom, cognoms)
)  ENGINE=INNODB;

CREATE TABLE generecinematografic (
    id_generecinematografic INT AUTO_INCREMENT,
    nom VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_generecinematografic)
)  ENGINE=INNODB;

CREATE TABLE critic (
    id_critic INT AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_critic)
)  ENGINE=INNODB;

CREATE TABLE pelicula (
    id_pelicula INT AUTO_INCREMENT,
    titol VARCHAR(50) NOT NULL,
    any SMALLINT(4),
    durada SMALLINT(3),
    idioma VARCHAR(20),
    pais VARCHAR(3),
    estrena DATETIME NULL,
    PRIMARY KEY (id_pelicula)
)  ENGINE=INNODB;

CREATE TABLE actor_pelicula (
    id_actor INT,
    id_pelicula INT,
    rol VARCHAR(40),
    PRIMARY KEY (id_actor , id_pelicula),
    CONSTRAINT fk_actor_pelicula_actor FOREIGN KEY (id_actor)
        REFERENCES actor (id_actor),
    CONSTRAINT fk_actor_pelicula_pelicula FOREIGN KEY (id_pelicula)
        REFERENCES pelicula (id_pelicula)
)  ENGINE=INNODB;

CREATE TABLE generecinematografic_pelicula (
    id_generecinematografic INT,
    id_pelicula INT,
    PRIMARY KEY (id_generecinematografic, id_pelicula),
    CONSTRAINT fk_generecinematografic_pelicula_generecinematografic FOREIGN KEY (id_generecinematografic)
        REFERENCES generecinematografic (id_generecinematografic),
    CONSTRAINT fk_generecinematografic_pelicula_pelicula FOREIGN KEY (id_pelicula)
        REFERENCES pelicula (id_pelicula)
)  ENGINE=INNODB;

CREATE TABLE critic_pelicula (
    id_critic INT,
    id_pelicula INT,
    valoracio TINYINT(1) NOT NULL,
    PRIMARY KEY (id_critic, id_pelicula),
    CONSTRAINT fk_critic_pelicula_critic FOREIGN KEY (id_critic)
        REFERENCES critic (id_critic),
    CONSTRAINT fk_critic_pelicula_pelicula FOREIGN KEY (id_pelicula)
        REFERENCES pelicula (id_pelicula),
	CONSTRAINT ck_critic_pelicula_valoracio CHECK (valoracio BETWEEN 1 AND 10)
)  ENGINE=INNODB;

CREATE TABLE director_pelicula (
    id_director INT,
    id_pelicula INT,
    PRIMARY KEY (id_director, id_pelicula),
    CONSTRAINT fk_director_pelicula_director FOREIGN KEY (id_director)
        REFERENCES director (id_director),
    CONSTRAINT fk_director_pelicula_pelicula FOREIGN KEY (id_pelicula)
        REFERENCES pelicula (id_pelicula)
)  ENGINE=INNODB;

# Pel·lícules
INSERT INTO pelicula (id_pelicula, titol, any, durada, idioma, estrena, pais)
SELECT 901, 'Vertigo', 1958, 128, 'English', '1958-08-24', 'UK'
UNION
SELECT 902, 'The Innocents', 1961, 100, 'English', '1962-02-19', 'SW'
UNION
SELECT 903, 'Lawrence of Arabia', 1962, 216, 'English', '1962-12-11', 'UK'
UNION
SELECT 904, 'The Deer Hunter', 1978, 183, 'English', '1979-03-08', 'UK'
UNION
SELECT 905, 'Amadeus', 1984, 160, 'English', '1985-01-07', 'UK'
UNION
SELECT 906, 'Blade Runner', 1982, 117, 'English', '1982-09-09', 'UK'
UNION
SELECT 907, 'Eyes Wide Shut', 1999, 159, 'English', NULL, 'UK'
UNION
SELECT 908, 'The Usual Suspects', 1995, 106, 'English', '1995-08-25', 'UK'
UNION
SELECT 909, 'Chinatown', 1974, 130, 'English', '1974-08-09', 'UK'
UNION
SELECT 910, 'Boogie Nights', 1997, 155, 'English', '1998-02-16', 'UK'
UNION
SELECT 911, 'Annie Hall', 1977, 93, 'English', '1977-04-20', 'USA'
UNION
SELECT 912, 'Princess Mononoke', 1997, 134, 'Japanese', '2001-10-19', 'UK'
UNION
SELECT 913, 'The Shawshank Redemption', 1994, 142, 'English', '1995-02-17', 'UK'
UNION
SELECT 914, 'American Beauty', 1999, 122, 'English', NULL, 'UK'
UNION
SELECT 915, 'Titanic', 1997, 194, 'English', '1998-01-23', 'UK'
UNION
SELECT 916, 'Good Will Hunting', 1997, 126, 'English', '1998-06-03', 'UK'
UNION
SELECT 917, 'Deliverance', 1972, 109, 'English', '1982-10-05', 'UK'
UNION
SELECT 918, 'Trainspotting', 1996, 94, 'English', '1996-02-23', 'UK'
UNION
SELECT 919, 'The Prestige', 2006, 130, 'English', '2006-11-10', 'UK'
UNION
SELECT 920, 'Donnie Darko', 2001, 113, 'English', NULL, 'UK'
UNION
SELECT 921, 'Slumdog Millionaire', 2008, 120, 'English', '2009-01-09', 'UK'
UNION
SELECT 922, 'Aliens', 1986, 137, 'English', '1986-08-29', 'UK'
UNION
SELECT 923, 'Beyond the Sea', 2004, 118, 'English', '2004-11-26', 'UK'
UNION
SELECT 924, 'Avatar', 2009, 162, 'English', '2009-12-17', 'UK'
UNION
SELECT 925, 'Braveheart', 1995, 178, 'English', '1995-09-08', 'UK'
UNION
SELECT 926, 'Seven Samurai', 954, 207, 'Japanese', '1954-04-26', 'JP'
UNION
SELECT 927, 'Spirited Away', 2001, 125, 'Japanese', '2003-09-12', 'UK'
UNION
SELECT 928, 'Back to the Future', 1985, 116, 'English', '1985-12-04', 'UK';

# Crítics
INSERT INTO critic (id_critic, nom) VALUES (9001, 'Righty Sock');
INSERT INTO critic (id_critic, nom) VALUES (9002, 'Jack Malvern');
INSERT INTO critic (id_critic, nom) VALUES (9003, 'Flagrant Baronessa');
INSERT INTO critic (id_critic, nom) VALUES (9004, 'Alec Shaw');
INSERT INTO critic (id_critic, nom) VALUES (9005, 'Antonio José Navarro');
INSERT INTO critic (id_critic, nom) VALUES (9006, 'Victor Woeltjen');
INSERT INTO critic (id_critic, nom) VALUES (9007, 'Simon Wright');
INSERT INTO critic (id_critic, nom) VALUES (9008, 'Neal Wruck');
INSERT INTO critic (id_critic, nom) VALUES (9009, 'Paul Monks');
INSERT INTO critic (id_critic, nom) VALUES (9010, 'Mike Salvati');
INSERT INTO critic (id_critic, nom) VALUES (9011, 'Daniel Arenas Martín');
INSERT INTO critic (id_critic, nom) VALUES (9012, 'Wesley S. Walker');
INSERT INTO critic (id_critic, nom) VALUES (9013, 'Sasha Goldshtein');
INSERT INTO critic (id_critic, nom) VALUES (9014, 'Josh Cates');
INSERT INTO critic (id_critic, nom) VALUES (9015, 'Krug Stillo');
INSERT INTO critic (id_critic, nom) VALUES (9016, 'Scott LeBrun');
INSERT INTO critic (id_critic, nom) VALUES (9017, 'Hannah Steele');
INSERT INTO critic (id_critic, nom) VALUES (9018, 'Vincent Cadena');
INSERT INTO critic (id_critic, nom) VALUES (9019, 'Brandt Sponseller');
INSERT INTO critic (id_critic, nom) VALUES (9020, 'Richard Adams');


# Crítics - Pel·lícules
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (901, 9001, 8);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (901, 9005, 8);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (901, 9009, 10);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (902, 9002, 7);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (902, 9003, 6);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (902, 9005, 8);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (902, 9007, 4);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (903, 9003, 8);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (903, 9008, 8);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (903, 9009, 7);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (906, 9005, 8);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (906, 9018, 7);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (906, 9020, 4);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (924, 9006, 7);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (924, 9007, 8);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (924, 9008, 8);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (908, 9007, 8);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (909, 9008, 6);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (909, 9007, 6);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (909, 9006, 6);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (909, 9018, 7);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (910, 9009, 3);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (911, 9010, 8);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (912, 9011, 8);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (914, 9013, 7);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (915, 9001, 7);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (916, 9014, 4);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (916, 9015, 4);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (916, 9016, 4);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (916, 9017, 4);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (916, 9018, 5);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (916, 9019, 6);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (925, 9015, 7);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (918, 9016, 5);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (920, 9017, 8);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (921, 9018, 8);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (921, 9019, 8);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (921, 9020, 8);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (921, 9001, 10);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (921, 9002, 9);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (921, 9003, 8);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (922, 9019, 8);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (923, 9020, 6);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (923, 9001, 6);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (923, 9002, 6);
INSERT INTO critic_pelicula (id_pelicula, id_critic, valoracio) VALUES (923, 9003, 6);

   
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (101, 'James', 'Stewart', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (102, 'Deborah', 'Kerr', 'D');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (103, 'Peter', 'OToole', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (104, 'Robert', 'De Niro', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (105, 'F. Murray', 'Abraham', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (106, 'Harrison', 'Ford', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (107, 'Nicole', 'Kidman', 'D');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (108, 'Stephen', 'Baldwin', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (109, 'Jack', 'Nicholson', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (110, 'Mark', 'Wahlberg', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (111, 'Woody', 'Allen', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (112, 'Claire', 'Danes', 'D');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (113, 'Tim', 'Robbins', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (114, 'Kevin', 'Spacey', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (115, 'Kate', 'Winslet', 'D');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (116, 'Robin', 'Williams', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (117, 'Jon', 'Voight', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (118, 'Ewan', 'McGregor', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (119, 'Christian', 'Bale', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (120, 'Maggie', 'Gyllenhaal', 'D');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (121, 'Dev', 'Patel', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (122, 'Sigourney', 'Weaver', 'D');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (123, 'David', 'Aston', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (124, 'Ali', 'Astin', 'D');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (125, 'Martin', 'Stephens', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (126, 'Michael', 'Redgrave', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (127, 'Michael', 'J. Fox', 'H');
INSERT INTO actor (id_actor, nom, cognoms, genere) VALUES (128, 'Christopher', 'Lloyd', 'H');

# actor - Pel·lícules
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (101, 901, 'John Scottie Ferguson');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (102, 902, 'Miss Giddens');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (125, 902, 'Miles');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (126, 902, 'The Uncle');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (103, 903, 'T.E. Lawrence');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (104, 904, 'Michael');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (105, 905, 'Antonio Salieri');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (106, 906, 'Rick Deckard');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (107, 907, 'Alice Harford');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (108, 908, 'McManus');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (109, 909, 'J.J. Gittes');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (110, 910, 'Eddie Adams');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (111, 911, 'Alvy Singer');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (112, 912, 'San');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (113, 913, 'Andy Dufresne');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (114, 923, 'Bobby Darin');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (114, 914, 'Lester Burnham');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (115, 915, 'Rose DeWitt Bukater');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (116, 916, 'Sean Maguire');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (117, 917, 'Ed');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (118, 918, 'Renton');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (119, 919, 'Alfred Borden');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (120, 920, 'Elizabeth Darko');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (121, 921, 'Older Jamal');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (122, 922, 'Ripley');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (127, 928, 'Marty McFly');
INSERT INTO actor_pelicula (id_actor, id_pelicula, rol) VALUES (128, 928, 'Emmett Brown');

# director
INSERT INTO director (id_director, nom, cognoms) VALUES (201, 'Alfred', 'Hitchcock');
INSERT INTO director (id_director, nom, cognoms) VALUES (202, 'Jack', 'Clayton');
INSERT INTO director (id_director, nom, cognoms) VALUES (203, 'David', 'Lean');
INSERT INTO director (id_director, nom, cognoms) VALUES (204, 'Michael', 'Cimino');
INSERT INTO director (id_director, nom, cognoms) VALUES (205, 'Milos', 'Forman');
INSERT INTO director (id_director, nom, cognoms) VALUES (206, 'Ridley', 'Scott');
INSERT INTO director (id_director, nom, cognoms) VALUES (207, 'Stanley', 'Kubrick');
INSERT INTO director (id_director, nom, cognoms) VALUES (208, 'Bryan', 'Singer');
INSERT INTO director (id_director, nom, cognoms) VALUES (209, 'Roman', 'Polanski');
INSERT INTO director (id_director, nom, cognoms) VALUES (210, 'Paul', 'Thomas Anderson');
INSERT INTO director (id_director, nom, cognoms) VALUES (211, 'Woody', 'Allen');
INSERT INTO director (id_director, nom, cognoms) VALUES (212, 'Hayao', 'Miyazaki');
INSERT INTO director (id_director, nom, cognoms) VALUES (213, 'Frank', 'Darabont');
INSERT INTO director (id_director, nom, cognoms) VALUES (214, 'Sam', 'Mendes');
INSERT INTO director (id_director, nom, cognoms) VALUES (215, 'James', 'Cameron');
INSERT INTO director (id_director, nom, cognoms) VALUES (216, 'Gus', 'Van Sant');
INSERT INTO director (id_director, nom, cognoms) VALUES (217, 'John', 'Boorman');
INSERT INTO director (id_director, nom, cognoms) VALUES (218, 'Danny', 'Boyle');
INSERT INTO director (id_director, nom, cognoms) VALUES (219, 'Christopher', 'Nolan');
INSERT INTO director (id_director, nom, cognoms) VALUES (220, 'Richard', 'Kelly');
INSERT INTO director (id_director, nom, cognoms) VALUES (221, 'Kevin', 'Spacey');
INSERT INTO director (id_director, nom, cognoms) VALUES (222, 'Andrei', 'Tarkovsky');
INSERT INTO director (id_director, nom, cognoms) VALUES (223, 'Peter', 'Jackson');
INSERT INTO director (id_director, nom, cognoms) VALUES (224, 'Robert', 'Zemeckis');

# Directos - Pel·lícules 
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 201, 901;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 202, 902;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 203, 903;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 204, 904;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 205, 905;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 206, 906;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 207, 907;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 208, 908;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 209, 909;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 210, 910;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 211, 911;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 212, 912;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 213, 913;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 214, 914;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 215, 922;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 215, 915;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 216, 916;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 217, 917;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 218, 921;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 218, 918;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 219, 919;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 220, 920;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 221, 923;
INSERT INTO director_pelicula (id_director, id_pelicula) SELECT 224, 928;

# Generes Cinematogràfics 
INSERT INTO generecinematografic (id_generecinematografic, nom) VALUES (1001, 'Action');
INSERT INTO generecinematografic (id_generecinematografic, nom) VALUES (1002, 'Adventure');
INSERT INTO generecinematografic (id_generecinematografic, nom) VALUES (1003, 'Animation');
INSERT INTO generecinematografic (id_generecinematografic, nom) VALUES (1004, 'Biography');
INSERT INTO generecinematografic (id_generecinematografic, nom) VALUES (1005, 'Comedy');
INSERT INTO generecinematografic (id_generecinematografic, nom) VALUES (1006, 'Crime');
INSERT INTO generecinematografic (id_generecinematografic, nom) VALUES (1007, 'Drama');
INSERT INTO generecinematografic (id_generecinematografic, nom) VALUES (1008, 'Horror');
INSERT INTO generecinematografic (id_generecinematografic, nom) VALUES (1009, 'Music');
INSERT INTO generecinematografic (id_generecinematografic, nom) VALUES (1010, 'Mystery');
INSERT INTO generecinematografic (id_generecinematografic, nom) VALUES (1011, 'Romance');
INSERT INTO generecinematografic (id_generecinematografic, nom) VALUES (1012, 'Thriller');
INSERT INTO generecinematografic (id_generecinematografic, nom) VALUES (1013, 'War');
    
# Generes Cinematogràfics - Pel·lícules
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 922, 1001;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 917, 1002;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 903, 1002;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 912, 1003;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 911, 1005;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 908, 1006;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 913, 1006;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 926, 1007;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 928, 1007;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 918, 1007;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 921, 1007;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 902, 1008;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 923, 1009;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 907, 1010;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 927, 1010;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 901, 1010;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 914, 1011;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 906, 1012;
INSERT INTO generecinematografic_pelicula (id_pelicula, id_generecinematografic) SELECT 904, 1013;
