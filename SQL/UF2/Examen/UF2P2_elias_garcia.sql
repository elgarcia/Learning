#Examen
USE uf2_pa2_pelicula;

#TASCA_1
/* Escriviu una consulta a SQL per trobar el nom i cognom d’un director i la pel·lícula que va
dirigir, on va aparèixer l’actriu Claire Danes, també volem el seu paper en aquesta pel·lícula. */

SELECT dir.nom, dir.cognoms, pe.titol, ac_pe.rol
FROM director as dir
	INNER JOIN director_pelicula as dirpe ON dirpe.id_director = dir.id_director
	INNER JOIN pelicula as pe ON pe.id_pelicula = dirpe.id_pelicula
	INNER JOIN actor_pelicula as ac_pe ON ac_pe.id_pelicula = pe.id_pelicula
WHERE pe.id_pelicula = (	SELECT s_pe.id_pelicula
								FROM pelicula as s_pe
									INNER JOIN actor_pelicula as s_acpe ON s_acpe.id_pelicula = s_pe.id_pelicula
									INNER JOIN actor as s_ac ON s_ac.id_actor = s_acpe.id_actor
								WHERE s_ac.nom = 'Claire' AND s_ac.cognoms = 'Danes'
						);
                        
#TASCA_2
/* Mostra el títol de les pel·lícules que almenys han rebut valoració, i la valoració màxima que
han rebut. Mostra-les de més valoració a menys. */

SELECT pe.titol, MAX(cr_pe.valoracio) as valoracio_maxima
FROM pelicula as pe
	INNER JOIN critic_pelicula as cr_pe ON cr_pe.id_pelicula = pe.id_pelicula
WHERE cr_pe.valoracio IS NOT NULL
GROUP BY pe.titol
ORDER BY cr_pe.valoracio DESC;

#TASCA_3
/* Escriviu una consulta a SQL per trobar el rol de les actrius de les pel·lícules amb una
mitjana d’entre 5 i 7 de valoració */

SELECT ac_pe.rol, AVG(cr_pe.valoracio) as valoracio_mitjana
FROM actor_pelicula as ac_pe
	INNER JOIN critic_pelicula as cr_pe ON cr_pe.id_pelicula = ac_pe.id_pelicula
    INNER JOIN actor as ac ON ac.id_actor = ac_pe.id_actor
WHERE ac.genere = 'D'
GROUP BY ac_pe.rol
HAVING valoracio_mitjana BETWEEN 5 AND 7;

#TASCA_4
/* Mostra els directors que han rebut alguna valoració de 8 ordenats per cognom, nom */

SELECT DISTINCT dir.nom, dir.cognoms
FROM director as dir
	INNER JOIN director_pelicula as dir_pe ON dir_pe.id_director = dir.id_director
	INNER JOIN critic_pelicula as cr_pe ON cr_pe.id_pelicula = dir_pe.id_pelicula
WHERE cr_pe.valoracio = 8
ORDER BY dir.cognoms, dir.nom;

#TASCA_5
/* De totes les pel·lícules del país UK, mostra el títol, la quantitat d’actors i la valoració mínima.
Ordenats de major a menor en valoració */

SELECT pe.titol, COUNT(ac.id_actor) as numero_actors, MIN(cr_pe.valoracio) as valoracio_minima
FROM pelicula as pe
	INNER JOIN critic_pelicula as cr_pe ON cr_pe.id_pelicula = pe.id_pelicula
    INNER JOIN actor_pelicula as ac_pe ON ac_pe.id_pelicula = pe.id_pelicula
    INNER JOIN actor as ac ON ac.id_actor = ac_pe.id_actor
WHERE pe.pais = 'UK'
GROUP BY pe.titol
ORDER BY valoracio_minima DESC;

#TASCA_6
/* Mostra els crítics i la mitjana de les puntuacions que han fet, també les pel·lícules i la
mitjana de puntuacions obtingudes. Volem les mitjanes inferiors a 5. */

(	SELECT cr.nom as critics_i_pelicules, AVG(cr_pe.valoracio) as valoracio_mitjana 
	FROM critic as cr
		INNER JOIN critic_pelicula as cr_pe ON cr_pe.id_critic = cr.id_critic
	GROUP BY cr.nom
    HAVING valoracio_mitjana < 5
)
UNION
(	SELECT pe.titol, AVG(cr_pe.valoracio) valoracio_mitjana
	FROM pelicula as pe
		INNER JOIN critic_pelicula as cr_pe ON cr_pe.id_pelicula = pe.id_pelicula
	GROUP BY pe.titol
    HAVING valoracio_mitjana < 5
)
