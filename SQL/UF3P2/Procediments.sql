USE negoci;

#PROCEDIMENT_1
CREATE PROCEDURE totalInventario()
BEGIN
    SELECT COUNT(*) as Numero_Productes 
    FROM producte;
END;


#PROCEDIMENT_2
CREATE PROCEDURE cerca(IN producte VARCHAR(50))
BEGIN
    SELECT id_producte, nom 
    FROM producte 
    WHERE nom LIKE producte;
END;

#PROCEDIMENT_3
CREATE PROCEDURE productesMarca(IN marca VARCHAR(30))
BEGIN 
    SELECT COUNT(*) 
    FROM producte 
    WHERE nom LIKE marca ;
END;

#PROCEDIMENT_4
CREATE PROCEDURE usuarisRegistrats(OUT numeroUsuaris SMALLINT)
BEGIN
    SELECT COUNT(id_usuari) INTO numeroUsuaris
    FROM usuari;
END;


#PROCEDIMENT_5
CREATE PROCEDURE afegirDepartament(IN nomDep VARCHAR(20), IN ubicacioDep VARCHAR(20))
BEGIN
    INSERT INTO departament (nom, ubicacio) VALUES (nomDep, ubicacioDep);
    SET @id_nou = LAST_INSERT_ID();
    SELECT id_departament, nom
    FROM departament
    WHERE id_departament = (SELECT @id_nou);
END;


#PROCEDIMENT_6
CREATE PROCEDURE afegirProducte(IN nomProducte VARCHAR(50), IN preuProducte DECIMAL(6,2), IN descripcioProducte VARCHAR(200), IN tipusProducte VARCHAR(20))
BEGIN
    INSERT INTO producte (nom, preu, descripcio, tipus) 
        VALUES (nomProducte, preuProducte, descripcioProducte, tipusProducte);
    SET @id_nou = LAST_INSERT_ID();
    SELECT *
    FROM producte
    WHERE id_producte = (SELECT @id_nou);
END;

#PROCEDIMENT_7
CREATE PROCEDURE filtreUsuari(IN paraulafiltre VARCHAR(20))
BEGIN
    DECLARE final INT DEFAULT 0;
    DECLARE var_id INT;
    DECLARE var_nomUser VARCHAR (20);
    DECLARE user_actual CURSOR FOR SELECT id_usuari, nom_usuari FROM usuari WHERE nom_usuari LIKE paraulafiltre;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET final = 1;

    OPEN user_actual;
    bucle: LOOP
        FETCH FROM user_actual INTO var_id, var_nomUser;
        IF final = 1 THEN 
            LEAVE bucle;
        END IF;
        SELECT var_id as User_id, var_nomUser as Nom_usuari;
    END LOOP;
    CLOSE user_actual;
END;

#PROCEDIMENT_8
CREATE PROCEDURE capacitatMagatzem(IN numeroMagatzem SMALLINT)
BEGIN
    SELECT numero_magatzem, capacitat,
    CASE
        WHEN capacitat < 50 THEN 'El magatzem te molta capacitat lliure'
        WHEN capacitat = 50 THEN 'El magatzem esta a la meitat'
        WHEN capacitat > 50 THEN 'El magatzem te poca capacitat lliure'
        ELSE 'Magatzem no trobat'
    END AS capactiat_magatzem
    FROM logistica
    WHERE numero_magatzem = numeroMagatzem;
END;

#PROCEDIMENT_9
CREATE PROCEDURE ultimsProductesAfegits()
BEGIN
    DECLARE comptador INT DEFAULT 1;
    DECLARE maxim INT DEFAULT 10;
    DECLARE total INT DEFAULT (SELECT COUNT(id_producte) FROM producte);
    DECLARE aux INT DEFAULT total - maxim + 1;

    WHILE (comptador <= maxim) DO
    BEGIN
        SELECT * FROM producte WHERE id_producte = aux; 
        SET aux = aux + 1;
        SET comptador = comptador + 1;
        END;
    END WHILE;
END;

#PROCEDIMENT_10
CREATE PROCEDURE pujarPreu(IN valor INT)
BEGIN 
    DECLARE i INT DEFAULT 1;
    DECLARE maxim INT DEFAULT (SELECT COUNT(id_producte) FROM producte);
    REPEAT
        UPDATE producte SET preu = preu * (1 + (valor/100)) WHERE id_producte = i;
        SET i = i + 1;
    UNTIL i > maxim END REPEAT;
END;

SHOW CREATE PROCEDURE cerca;
SHOW CREATE PROCEDURE totalInventario;
SHOW CREATE PROCEDURE productesMarca;
SHOW CREATE PROCEDURE usuarisRegistrats;
SHOW CREATE PROCEDURE afegirDepartament;
SHOW CREATE PROCEDURE afegirProducte;
SHOW CREATE PROCEDURE filtreUsuari;
SHOW CREATE PROCEDURE capacitatMagatzem;
SHOW CREATE PROCEDURE ultimsProductesAfegits;
SHOW CREATE PROCEDURE pujarPreu;

#CRIDES A PROCEDIMENT
#PROCEDIMENT_1
CALL totalInventario();

#PROCEDIMENT_2
CALL cerca("%Razer%");

#PROCEDIMENT_3
CALL productesMarca("%Logitech%");

#PROCEDIMENT_4
SET @aux = 0;
CALL usuarisRegistrats(aux);
SELECT @aux;

#PROCEDIMENT_5
CALL afegirDepartament("Atencio al client", "Barcelona");

#PROCEDIMENT_6
CALL afegirProducte("RedDragon K530", 60, "Small 60% Mechanical Keyboard White/Black", "Teclat");

#PROCEDIMENT_7
CALL filtreUsuari("The%");

#PROCEDIMENT_8
CALL capacitatMagatzem(3);

#PROCEDIMENT_9
CALL ultimsProductesAfegits();

#PROCEDIMENT_10
#El numero es en tant per cent
CALL pujarPreu(10);