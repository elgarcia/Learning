USE uf2_p2_pizzeria;

CREATE FUNCTION ingredientsUltimaComanda()
RETURNS TABLE (nom VARCHAR(50))
BEGIN
    RETURN QUERY 
    SELECT ing.nom
    FROM ingredient as ing
    INNER JOIN pizza_ingredient as ping ON ping.id_ingredient = ing.id_ingredient
    INNER JOIN pizza as pi ON pi.id_producte = ping.id_producte
    INNER JOIN producte as pr ON pi.id_producte = pr.id_producte
    INNER JOIN comanda_producte as copr ON copr.id_producte = pr.id_producte
    INNER JOIN comanda as co ON co.id_comanda = copr.id_comanda
    WHERE co.id_comanda = (SELECT MAX(id_comanda) FROM comanda);
END;

SELECT ingredientsUltimaComanda();