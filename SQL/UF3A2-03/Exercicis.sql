USE uf2_p2_pizzeria;

#Tasca 1
SELECT COUNT(id_comanda) INTO @comandes
FROM COMANDA
WHERE DATE(data_hora) = DATE('2017-01-11');

SELECT @comandes;

#Tasca 2
SET @contador = 0;

SELECT nom, @contador := @contador + 1 as comptador
FROM client
ORDER BY nom;


#Tasca 3
SET @facturacio_max := (
	SELECT MAX(preus_comandes)
	FROM producte as ap
		RIGHT JOIN (
	SELECT c.id_comanda, SUM(p.preu) as preus_comandes
	FROM producte as p
		INNER JOIN comanda_producte as cp ON cp.id_producte = p.id_producte
		INNER JOIN comanda as c ON c.id_comanda = cp.id_comanda
	GROUP BY c.id_comanda
	) pc ON pc.preus_comandes = ap.preu);
    
SELECT @facturacio_max;

#Tasca 4
SET @increment = 1.01;
SELECT p.nom, p.preu as preu_antic, p.preu * @increment as nou_preu
FROM producte as p
    INNER JOIN postre as po ON po.id_producte = p.id_producte

#Tasca 5
SELECT c.nom, SUM(p.preu)
FROM client as c
    INNER JOIN comanda as co ON co.client_id = c.id_client
    INNER JOIN comanda_producte as copr ON copr.id_comanda = co.id_comanda
    INNER JOIN producte as p ON p.id_producte = copr.id_producte
GROUP BY c.id_client;