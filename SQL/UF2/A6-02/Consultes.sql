#Tasca 1
SELECT id_planta, nom_popular
	FROM planta
    WHERE estacio_id = 'Estiu';

#Tasca 2
SELECT id_planta AS nom_cientific, nom_popular AS popular
	FROM planta
    WHERE estacio_id IN ('Hivern', 'Tardor');
    
#Tasca 3
SELECT id_planta AS nom_cientific
	FROM adob_estacio_planta
    WHERE id_adob = 'Casadob';
    
#Tasca 4
SELECT id_adob, tipus
	FROM adob
    WHERE firma_comercial_id = 'Prisadob';
    
#Tasca 5
SELECT id_planta
	FROM planta_interior
    WHERE temperatura > 16;
    
#Tasca 6
SELECT DISTINCT id_planta 
	FROM adob_estacio_planta
	WHERE quantitat BETWEEN 40 AND 50;

#Tasca 7
SELECT DISTINCT id_planta
	FROM adob_estacio_planta
    WHERE id_estacio IN('Tardor', 'Hivern');
    
#Tasca 8
SELECT DISTINCT id_planta, nom_popular
	FROM planta
	WHERE nom_popular LIKE '%i%';
    
#Tasca 9
SELECT id_adob, firma_comercial_id
	FROM adob
	WHERE firma_comercial_id IN ('Cirsadob', 'Tirsadob');
    
#Tasca 10
SELECT id_planta
	FROM adob_estacio_planta
	WHERE id_adob = 'Casadob' AND quantitat > 40;
    
#Tasca 11
SELECT DISTINCT id_planta
	FROM adob_estacio_planta
    WHERE id_estacio = 'Primavera' OR id_adob = 'Sanexplant';
    
#Tasca 12
SELECT DISTINCT id_planta
	FROM adob_estacio_planta, adob
	WHERE tipus = 'LLD';
    
#Tasca 13
SELECT id_planta
	FROM planta_interior
    WHERE ubicacio = 'Llum directa' AND temperatura = '15';
    
#Tasca 14
SELECT id_firma_comercial
	FROM firma_comercial
	WHERE id_firma_comercial LIKE '___adob';

#Tasca 15
SELECT id_adob, firma_comercial_id
	FROM adob
    WHERE firma_comercial_id LIKE 'P%' OR firma_comercial_id LIKE 'T%';
