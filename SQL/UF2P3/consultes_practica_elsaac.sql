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
SELECT id_usuari, id_producte, entitat_bancaria_id
	FROM entitat_bancaria_producte_usuari
    WHERE validacio LIKE 'OKAY';
    
#Saber cuants ratolis de marca o razer o logitech hi han per sota de 50 euros
SELECT COUNT(preu) AS nombre_productes
	FROM producte
	WHERE preu > 50 AND nom LIKE 'Razer%' OR preu > 50 AND nom LIKE'Logitech%';

#Saber quants cotxes tindran més de 150000 kilometres (+50000 per any) quan acabi 2023
SELECT COUNT(matricula)
FROM vehicle
WHERE kms+50000 > 150000;

#Saber quins treballadors han nascut al Febrer
SELECT nom, correu, data_naixement
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
SELECT nom, data_darrer_manteniment, fitxer
 FROM pagina
 WHERE TIMESTAMPDIFF(DAY, data_darrer_manteniment, data_actual)>50;
 
-- Ampliació

#Mostra els noms dels productes comprats i el nom i cognoms del seu comprador
SELECT p.nom, p.tipus, CONCAT(u.nom, ' ', u.cognoms) as comprador
FROM producte as p
	INNER JOIN entitat_bancaria_producte_usuari as ebpu ON ebpu.id_producte = p.id_producte
    INNER JOIN usuari as u ON u.id_usuari = ebpu.id_usuari
WHERE validacio LIKE 'OKAY'
ORDER BY comprador;

#Mostra els treballadors i telefon del departament de manteniment.
SELECT  t.nom, t.cognom, t.telefon
FROM treballador as t
	INNER JOIN departament as d ON d.id_departament = t.departament_id
WHERE d.nom LIKE 'Manteniment'
ORDER BY t.cognom;

#Mostra els supervisors i a quants treballadors supervisen
SELECT t.id_treballador, t.nom as supervisor, (SELECT COUNT(nom)
			FROM treballador
			WHERE supervisor_id = t.id_treballador) as treballadors
FROM treballador as t
WHERE supervisor_id IS NULL
ORDER BY treballadors DESC;

#Mostra els treballdors de logistica, per ordre jerarquic i de major a menor
SELECT 	CONCAT(t.nom, ' ', t.cognom) as departament_logistica,
		STRCMP('cap',IFNULL(CAST(t.supervisor_id as CHAR), 'cap')) as rang,
        (SELECT YEAR(data_actual)-YEAR(data_naixement) as edat
		FROM treballador
		WHERE id_treballador = t.id_treballador) as edat
FROM treballador as t
	INNER JOIN departament as d ON d.id_departament = t.departament_id
WHERE d.nom LIKE 'Logistica'
ORDER BY rang, edat DESC;

#Mostra les pagines que penjen de periferics i el nombre de productes
SELECT pa.nom, COUNT(pr.id_producte) as productes
FROM pagina as pa
	INNER JOIN producte as pr ON pr.pagina_id = pa.id_pagina
WHERE pa.pagina_enllacada_id IN (SELECT id_pagina
								FROM pagina
								WHERE nom LIKE 'Periferics')
GROUP BY pa.nom
ORDER BY productes DESC;

#Mostra els 3 ratolins mes cars de Razer i 3 mes cars de Logitech
(SELECT nom, preu
FROM producte
WHERE nom LIKE 'Razer%'
ORDER BY preu DESC limit 3)
UNION
(SELECT nom, preu
FROM producte
WHERE nom LIKE 'Logitech%'
ORDER BY preu DESC limit 3)
ORDER BY preu DESC;

#Mostra els periferics de cada tipus més barats per muntar un set-up ordenats de cars a abarat
SELECT pr.tipus, pr.nom, MIN(pr.preu) as preu
FROM producte as pr
	INNER JOIN pagina as pa ON pa.id_pagina = pr.pagina_id
WHERE pa.pagina_enllacada_id IN (SELECT id_pagina
								FROM pagina
								WHERE nom LIKE 'Periferics')
GROUP BY tipus
ORDER BY preu DESC;

#Mostra la capacitat dels magatzems per sobre de la mitjana de capacitat i els productes que magatzemen.
SELECT p.nom, p.tipus, l.capacitat
FROM producte as p
	INNER JOIN departament as d ON d.id_departament = p.departament_id
    INNER JOIN logistica as l ON l.id_departament = d.id_departament
WHERE p.departament_id IN (SELECT id_departament
						FROM logistica
						WHERE capacitat > (SELECT AVG(capacitat)
											FROM logistica));
#Mostra quants fitxers i treballadors tenen assignats cada departament de manteniment	
    (SELECT CONCAT('Mant. ',d.id_departament) as departament, COUNT(p.nom) as fitxers
	FROM departament as d
	INNER JOIN pagina as p ON d.id_departament = p.departament_id
	GROUP BY d.id_departament)
    UNION
    (SELECT CONCAT('Mant. ',d.id_departament), COUNT(t.nom) as treballadors
	FROM departament as d
    INNER JOIN manteniment as m ON m.id_departament = d.id_departament
	INNER JOIN treballador as t ON t.departament_id = d.id_departament
	GROUP BY d.id_departament)

#Mostra quants vehicles hi ha a cada garatge i a quina porta es troben
SELECT v.id_vehicle, g.id_garatge, p.id_porta
FROM vehicle as v
	INNER JOIN porta as p ON v.id_vehicle = p.vehicle_id
	INNER JOIN garatge as g ON g.id_garatge = p.id_garatge
ORDER BY v.id_vehicle;

#Mostra quin producte ens dona els proveedor amb id 4 i quina quantitat
SELECT p.nom, pp.quantitat
FROM producte as p
	INNER JOIN proveedor_producte as pp ON pp.id_producte = p.id_producte
	INNER JOIN proveedor as pr ON pr.id_proveedor = pp.id_proveedor
WHERE p.id_proveedor = 4
GROUP BY p.nom;

#Mostra la matricula dels vehicles en ordre descendent que estan en el garatge 4 i les seves respectives portes
SELECT v.matricula, p.id_porta
FROM vehicle as v
	INNER JOIN porta as p ON p.vehicle_id = v.id_vehicle
	INNER JOIN garatge as g ON g.id_garatge = p.id_garatge
WHERE g.id_garatge = 4
ORDER BY v.matricula DESC;

#Mostra quin es el major proveedor i el menor, i quins productes ens porta
(	SELECT pr.nom as Major, p.nom
	FROM proveedor as pr
		INNER JOIN proveedor_producte as pp ON pp.id_proveedor = pr.id_proveedor
		INNER JOIN prodcute as p ON p.id_producte = pp.id_producte
	WHERE pp.quantitat = (	SELECT MAX(s_pp.quantitat)
							FROM proveedor_producte as s_pp
						)
)
UNION
(	SELECT pr.nom as Menor, p.nom
	FROM proveedor as pr
		INNER JOIN proveedor_producte as pp ON pp.id_proveedor = pr.id_proveedor
		INNER JOIN prodcute as p ON p.id_producte = pp.id_producte
	WHERE pp.quantitat = (	SELECT MIN(s_pp.quantitat)
							FROM proveedor_producte as s_pp
						)

)



