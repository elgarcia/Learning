USE negoci;

#Saber qui es el supervisor de X departament
SELECT nom AS treballador, cognom, supervisor_id AS id_cap, departament_id AS departament
	FROM treballador
	WHERE supervisor_id IS NULL AND departament_id = 1;
    
#Sabers els titulars d entitat bancaria que acabi en Sabadell
SELECT nom_entitat AS entitat, titular
	FROM entitat_bancaria
    WHERE nom_entitat LIKE '%Sabadell';

#Saber els productes entre 10 i 30 euros
SELECT nom, preu
	FROM producte
    WHERE preu BETWEEN 10 AND 30;

#Saber les compres valides
SELECT *
	FROM entitat_bancaria_producte_usuari
    WHERE validacio LIKE 'OKAY';
    
#Saber cuants ratolis de marca o razer o logitech hi han per sota de 50 euros
SELECT COUNT(preu) AS nombre_productes
	FROM producte
	WHERE preu > 50 AND nom LIKE 'Razer%' OR preu > 50 AND nom LIKE'Logitech%';

#Saber quants cotxes tindran més de 150000 kilometres (+50000 per any) quan acabi 2023
SELECT  COUNT(kms+50000) as kms_2024
	FROM vehicle
    WHERE kms > 150000;

#Saber quins treballadors han nascut al Febrer
SELECT *
	FROM treballador
    WHERE MONTH(data_naixement) = 2;

#Saber un usuari amb un nick llarg, de sexe masculi i nascut abans del 2004
SELECT nom_usuari, nom, cognoms
	FROM usuari
	WHERE LENGTH(nom_usuari) > 10 AND sexe = 'M'AND YEAR(data_naixement)<=2004; 

#Saber quins treballadors tenen o el nom o cognom massa llarg per un poster que estem dissenyant
SELECT CONCAT(nom, '_', cognom) AS nom_cognom, correu
	FROM treballador
	WHERE LENGTH(nom) > 5 OR LENGTH(cognom )> 9;

#Saber quines pagines porten més de 50 dies sense un manteniment
SELECT *
 FROM pagina
 WHERE TIMESTAMPDIFF(DAY, data_darrer_manteniment, data_actual)>50
