USE uf2_p2_pizzeria;

#Tasca 1
SELECT cl.nom, cl.adreca, cl.poblacio
FROM client as cl
ORDER BY cl.poblacio;

#Tasca 2
SELECT *
FROM empleat as em
ORDER BY em.cognoms, em.nom;

#Tasca 3
SELECT pr.nom, pr.preu
FROM producte as pr
ORDER BY pr.preu;

#Tasca 4
SELECT pr.nom, pr.preu
FROM producte as pr
	INNER JOIN beguda as be ON be.id_producte = pr.id_producte
ORDER BY pr.preu DESC, pr.nom;

#Tasca 5
SELECT pr.nom, ing.nom
FROM producte as pr
	INNER JOIN pizza_ingredient as ping ON ping.id_producte = pr.id_producte
    INNER JOIN pizza as pi ON pi.id_producte = ping.id_producte
    INNER JOIN ingredient as ing ON ing.id_ingredient = ping.id_ingredient
ORDER BY pr.nom DESC, ing.nom ASC;

#Tasca 8
SELECT pr.nom, pr.preu
FROM producte as pr
	INNER JOIN postre as pos ON pos.id_producte = pr.id_producte
	INNER JOIN comanda_producte as copr ON copr.id_producte = pr.id_producte
    INNER JOIN comanda as co ON co.id_comanda = copr.id_comanda
    INNER JOIN client as cl ON cl.id_client = co.client_id
WHERE cl.nom = 'Guillem Jam'
ORDER BY pr.preu;

