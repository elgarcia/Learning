USE uf2_p2_pizzeria;

#Tasca 1
SELECT ing.nom
FROM ingredient as ing
	INNER JOIN pizza_ingredient as ping ON ping.id_ingredient = ing.id_ingredient
	INNER JOIN pizza as pi ON pi.id_producte = ping.id_producte
    INNER JOIN producte as pr ON pi.id_producte = pr.id_producte
	INNER JOIN comanda_producte as copr ON copr.id_producte = pr.id_producte
	INNER JOIN comanda as co ON co.id_comanda = copr.id_comanda
WHERE co.id_comanda = (SELECT MAX(id_comanda) FROM comanda);

#Tasca 2
SELECT co.id_comanda, co.data_hora
FROM comanda as co
	INNER JOIN client as cl ON cl.id_client = co.client_id
WHERE cl.id_client IN ((SELECT cl.id_client 
						FROM client as cl 
							INNER JOIN comanda as co ON co.client_id = cl.id_client
						WHERE co.domicili_local = 'L'));

#Tasca 3
SELECT pr.nom
FROM comanda as co
	INNER JOIN comanda_producte AS copr ON copr.id_comanda = co.id_comanda
    INNER JOIN producte AS pr ON copr.id_producte = pr.id_producte
    INNER JOIN pizza AS p ON p.id_producte = pr.id_producte
WHERE co.id_comanda IN ((SELECT s_co.id_comanda
						 FROM comanda as s_co
							INNER JOIN comanda_producte AS s_copr ON s_copr.id_comanda = s_co.id_comanda
							INNER JOIN producte AS s_pr ON s_copr.id_producte = s_pr.id_producte
							INNER JOIN beguda AS s_be ON s_be.id_producte = s_pr.id_producte
						 WHERE s_be.alcoholica = 'S'));
                         
#Tasca 4
SELECT DISTINCT pr.nom
FROM producte as pr
	INNER JOIN beguda as be ON be.id_producte = pr.id_producte
	INNER JOIN comanda_producte AS copr ON copr.id_producte = pr.id_producte
    INNER JOIN comanda as co ON co.id_comanda = copr.id_comanda
WHERE co.id_comanda IN ((SELECT s_co.id_comanda
						 FROM comanda as s_co
							INNER JOIN comanda_producte as s_cp ON s_cp.id_comanda = s_co.id_comanda
							INNER JOIN producte as s_p ON s_p.id_producte = s_cp.id_producte
                            INNER JOIN pizza as s_pi ON s_pi.id_producte = s_p.id_producte
						WHERE s_p.nom LIKE '%Barbacoa'));
                        
#Tasca 5
SELECT DISTINCT ing.nom
FROM ingredient AS ing
	INNER JOIN pizza_ingredient as ping ON ping.id_ingredient = ing.id_ingredient
    INNER JOIN pizza as pi ON pi.id_producte = ping.id_producte
WHERE pi.id_producte IN (SELECT s_pi.id_producte
							FROM pizza AS s_pi
								INNER JOIN pizza_ingredient as s_ping ON s_ping.id_producte = s_pi.id_producte
								INNER JOIN ingredient as s_ing ON s_ping.id_ingredient = s_ing.id_ingredient
							WHERE s_ing.nom = 'Pernil York');