USE uf2_p2_pizzeria;

#Tasca 1
SELECT cl.nom
FROM client as cl
	INNER JOIN comanda as co ON cl.id_client = co.client_id
WHERE co.id_comanda = 10002;

#Tasca 2
SELECT em.nom, em.cognoms
FROM empleat as em
	INNER JOIN comanda as co ON em.id_empleat = co.empleat_id
WHERE co.id_comanda = 10000;

#Tasca 3
SELECT co.id_comanda, co.domicili_local
FROM comanda as co
	INNER JOIN client as cl ON co.client_id = cl.id_client
WHERE cl.nom = 'Josep Vila';

#Tasca 4
SELECT co.id_comanda, cl.nom
FROM comanda as co
	INNER JOIN client as cl ON co.client_id = cl.id_client
WHERE co.domicili_local = 'L';

#Tasca 5
SELECT DISTINCT em.nom, em.cognoms
FROM empleat as em
	INNER JOIN comanda as co ON co.empleat_id = em.id_empleat
    INNER JOIN client as cl ON cl.id_client = co.client_id
WHERE cl.nom = 'Carme Garcia';

#Tasca 6
SELECT co.data_hora
FROM comanda as co
	INNER JOIN empleat as em ON co.empleat_id = em.id_empleat
WHERE em.nom = 'Marta' AND em.cognoms = 'Pou';

#Tasca 7
SELECT COUNT(co.id_comanda) as Comandes
FROM comanda as co
WHERE co.domicili_local = 'D';

#Tasca 8
SELECT copr.id_comanda
FROM comanda_producte as copr
	INNER JOIN comanda as co ON copr.id_comanda = co.id_comanda
    INNER JOIN producte as pr ON copr.id_producte = pr.id_producte
WHERE pr.nom = 'Pizza 4 estacions';

#Tasca 9
SELECT SUM(copr.quantitat) as Coca_colas_venudes
FROM comanda_producte as copr
	INNER JOIN comanda as co ON copr.id_comanda = co.id_comanda
	INNER JOIN producte as pr ON copr.id_producte = pr.id_producte
WHERE pr.nom LIKE '%Coca-cola';

#Tasca 10
SELECT DISTINCT ing.nom
FROM pizza_ingredient as piin
	INNER JOIN ingredient as ing ON piin.id_ingredient = ing.id_ingredient
    INNER JOIN pizza as pi ON piin.id_producte = pi.id_producte
    INNER JOIN producte as pr ON pi.id_producte = pr.id_producte
WHERE pr.nom LIKE '%Barbacoa';

#Tasca 11
SELECT pr.nom, pr.preu
FROM producte as pr
	INNER JOIN beguda as be ON pr.id_producte = be.id_producte;
    
#Tasca 12
SELECT pr.nom
FROM producte as pr
	INNER JOIN pizza_ingredient as piin ON piin.id_producte = pr.id_producte
    INNER JOIN ingredient as ing ON piin.id_ingredient = ing.id_ingredient
WHERE ing.nom = 'Pinya';

#Tasca 13
SELECT DISTINCT ing.nom
FROM pizza_ingredient as piin
	INNER JOIN ingredient as ing ON piin.id_ingredient = ing.id_ingredient
    INNER JOIN pizza as pi ON piin.id_producte = pi.id_producte
    INNER JOIN producte as pr ON pi.id_producte = pr.id_producte
WHERE pr.nom LIKE '%4 estacions';

#Tasca 14
SELECT pr.nom
FROM producte as pr
	INNER JOIN beguda as be ON pr.id_producte = be.id_producte
WHERE be.alcoholica = 'N';

#Tasca 15
SELECT SUM(pr.preu) as preu_total
FROM comanda_producte as copr
	INNER JOIN comanda as co ON copr.id_comanda = co.id_comanda
    INNER JOIN producte as pr ON copr.id_producte = pr.id_producte
WHERE co.id_comanda = '10005';

#Tasca 16
SELECT COUNT(cl.id_client) as numero_comandes
FROM client as cl
	INNER JOIN comanda as co ON co.client_id = cl.id_client
WHERE cl.poblacio NOT IN ('Terrassa');

#Tasca 17
SELECT COUNT(pr.id_producte) as quantitat_pizzes
FROM producte as pr
	INNER JOIN pizza as pi ON pi.id_producte = pr.id_producte;
    
#Tasca 18
