USE negoci;

#1.- Mostrar tots els productes
PREPARE show_products FROM 'SELECT DISTINCT * FROM producte';
EXECUTE show_products;
DEALLOCATE PREPARE show_products;

#2.- 