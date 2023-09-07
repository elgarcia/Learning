USE negoci;

INSERT INTO departament  VALUE (1, 'Manteniment', 'Pg.Major 5');
INSERT INTO departament (nom, ubicacio) VALUE ('Manteniment', 'C/Trencanous 66');
INSERT INTO departament (nom, ubicacio) VALUE ('Manteniment', 'Av/Sant Esteve 70');
INSERT INTO departament (nom, ubicacio) VALUE ('Distribució', 'Pg.Major 5');
INSERT INTO departament (nom, ubicacio) VALUE ('Distribució', 'C/Jaume I');
INSERT INTO departament (nom, ubicacio) VALUE ('Distribució', 'Avinguda Sentmenat');
INSERT INTO departament (nom, ubicacio) VALUE ('Logística', 'C/Sabadell 1');
INSERT INTO departament (nom, ubicacio) VALUE ('Logística', 'C/Sabadell 3');
INSERT INTO departament (nom, ubicacio) VALUE ('Logística', 'C/Sabadell 5');
INSERT INTO departament (nom, ubicacio) VALUE ('Logística', 'C/Sabadell 7');

INSERT INTO distribucio VALUE (4, 5);
INSERT INTO distribucio VALUE (5, 3);
INSERT INTO distribucio VALUE (6, 2);

INSERT INTO logistica VALUE (7, 1, 50);
INSERT INTO logistica VALUE (8, 2, 30);
INSERT INTO logistica VALUE (9, 3, 70);

INSERT INTO manteniment VALUE (1, 1);
INSERT INTO manteniment VALUE (2, 2);
INSERT INTO manteniment VALUE (3, 3);


INSERT INTO entitat_bancaria VALUE (1, '2025/02/23', 123, 'ES1234567812345678123456' , 'Caixa Bank', 'Isaac Colmenares Gasca');
INSERT INTO entitat_bancaria (caducitat, cvv, numero_compte, nom_entitat, titular) VALUE ( '2024/02/23', 123, 'ES2134567812345678123456' , 'Banco Santander', 'Oscar Martinez Boix');
INSERT INTO entitat_bancaria (caducitat, cvv, numero_compte, nom_entitat, titular) VALUE ( '2023/02/23', 123, 'ES1234567812345678123458', 'Banc Sabadell', 'Elias Garcia Saenz');
INSERT INTO entitat_bancaria (caducitat, cvv, numero_compte, nom_entitat, titular) VALUE ( '2023/05/23', 123, 'ES1256781234567812345678' , 'Ibercaja', 'Manolo Gutierrez Fernandez');
INSERT INTO entitat_bancaria (caducitat, cvv, numero_compte, nom_entitat, titular) VALUE ( '2024/05/23', 123, 'ES1234567812345612345678', 'Banc Sabadell', 'Nil Arilla Soriano');
INSERT INTO entitat_bancaria (caducitat, cvv, numero_compte, nom_entitat, titular) VALUE ( '2024/07/23', 123, 'ES1234567812345678145678', 'Caixa Bank', 'Emilio Fernandez Vicente');
INSERT INTO entitat_bancaria (caducitat, cvv, numero_compte, nom_entitat, titular) VALUE ( '2025/01/23', 123, 'ES1234567812194567865678', 'ING', 'Marta Hidalgo Suarez');
INSERT INTO entitat_bancaria (caducitat, cvv, numero_compte, nom_entitat, titular) VALUE ( '2025/01/21', 123, 'ES1234567812442567865678', 'BBVA', 'Francisco Garcia Garcia');
INSERT INTO entitat_bancaria (caducitat, cvv, numero_compte, nom_entitat, titular) VALUE ( '2024/01/27', 123, 'ES1234567812317567865678', 'Cajamar', 'Oriol Martinez Ramirez');
INSERT INTO entitat_bancaria (caducitat, cvv, numero_compte, nom_entitat, titular) VALUE ( '2023/02/05', 123, 'ES1234567812332567865678', 'BBVA', 'Sandra Ruiz Zafon');

INSERT INTO pagina (id_pagina, nom, url, fitxer, data_darrer_manteniment, departament_id) VALUE (100, 'Inici', 'www.elaac/inici', 'inici.html', '2022/12/12', 1);
INSERT INTO pagina (nom, url, fitxer, data_darrer_manteniment, departament_id, pagina_enllacada_id ) VALUE ('Productes', 'www.elaac/Productes', 'productes.html', '2022/08/12', 2, 100);
INSERT INTO pagina (nom, url, fitxer, data_darrer_manteniment, departament_id, pagina_enllacada_id ) VALUE ('Carrito', 'www.elaac/Carrito', 'carrito.html', '2022/12/10', 1, 100);
INSERT INTO pagina (nom, url, fitxer, data_darrer_manteniment, departament_id, pagina_enllacada_id ) VALUE ('Perfil', 'www.elaac/Perfil', 'perfil.html', '2022/12/07', 3, 100);
INSERT INTO pagina (nom, url, fitxer, data_darrer_manteniment, departament_id, pagina_enllacada_id ) VALUE ('FAQ', 'www.elaac/FAQ', 'faq.html', '2022/10/10', 1, 100);
INSERT INTO pagina (nom, url, fitxer, data_darrer_manteniment, departament_id, pagina_enllacada_id ) VALUE ('Contacte', 'www.elaac/Contacte', 'contactes.html', '2022/12/05', 2, 100);
INSERT INTO pagina (nom, url, fitxer, data_darrer_manteniment, departament_id, pagina_enllacada_id ) VALUE ('Components', 'www.elaac/Produtes/Components', 'components.html', '2022/11/12', 2, 101);
INSERT INTO pagina (nom, url, fitxer, data_darrer_manteniment, departament_id, pagina_enllacada_id ) VALUE ('Periferics', 'www.elaac/Productes/Periferics', 'periferics.html', '2022/11/10', 3, 101);
INSERT INTO pagina (nom, url, fitxer, data_darrer_manteniment, departament_id, pagina_enllacada_id ) VALUE ('Portatils', 'www.elaac/Productes/Portatils', 'portatils.html', '2022/11/03', 1, 101);
INSERT INTO pagina (nom, url, fitxer, data_darrer_manteniment, departament_id, pagina_enllacada_id ) VALUE ('Ratolins', 'www.elaac/Productes/Periferics/Ratolins', 'ratolins.html', '2022/10/28', 3, 107);

INSERT INTO producte VALUE (1, 'Razer Deathadder Elite', 59.99, 'Ratolí Gamer RGB', 109, 7);
INSERT INTO producte (nom, preu, descripcio, pagina_id, departament_id) VALUE ('MSI Clutch GM08', 19.99, 'Ratolí Gamer Vermell', 109, 8);
INSERT INTO producte (nom, preu, descripcio, pagina_id, departament_id) VALUE ('Logitech M90', 9.99, 'Ratolí cablejat', 109, 8);
INSERT INTO producte (nom, preu, descripcio, pagina_id, departament_id) VALUE ('Logitech B100', 13.99, 'Ratolí Gamer Logitech', 109, 9);
INSERT INTO producte (nom, preu, descripcio, pagina_id, departament_id) VALUE ('Sharkoon Shark Force II', 11.99, 'Ratolí Gamer Blau', 109, 7);
INSERT INTO producte (nom, preu, descripcio, pagina_id, departament_id) VALUE ('Asus M4 Wireless', 66.89, 'Ratolí Gamer Inalambric', 109, 8);
INSERT INTO producte (nom, preu, descripcio, pagina_id, departament_id) VALUE ('SteelSeries AeroX 3', 69.99, 'Ratolí Gamer Inalambric RGB', 109, 9);
INSERT INTO producte (nom, preu, descripcio, pagina_id, departament_id) VALUE ('SteelSeries Rival 3', 39.99, 'Ratolí Gamer SteelSeries', 109, 7);
INSERT INTO producte (nom, preu, descripcio, pagina_id, departament_id) VALUE ('CrossAir Katar Eltie Wireless', 79.99, 'Ratolí Gamer CrossAir Wireless', 109, 8);
INSERT INTO producte (nom, preu, descripcio, pagina_id, departament_id) VALUE ('Razer Orochi V2', 59.99, 'Ratolí Gamer Razer', 109, 9);

INSERT INTO vehicle VALUE (1, 'BOB6969', 250964);
INSERT INTO vehicle (matricula, kms) VALUE ( 'BOB8606', 223456);
INSERT INTO vehicle (matricula, kms) VALUE ( 'BOB9765', 201789);
INSERT INTO vehicle (matricula, kms) VALUE ( 'FGD2378', 156345);
INSERT INTO vehicle (matricula, kms) VALUE ( 'GHL0903', 64320);
INSERT INTO vehicle (matricula, kms) VALUE ( 'JML5931', 45632);
INSERT INTO vehicle (matricula, kms) VALUE ( 'JML7854', 44567);
INSERT INTO vehicle (matricula, kms) VALUE ( 'JML9731', 35032);
INSERT INTO vehicle (matricula, kms) VALUE ( 'LCK4964', 10457);
INSERT INTO vehicle (matricula, kms) VALUE ( 'LCK6209', 8453);


INSERT INTO distribucio_producte_vehicle VALUE (1, 1, 5, 1910);
INSERT INTO distribucio_producte_vehicle VALUE (5, 7, 4, 1420);
INSERT INTO distribucio_producte_vehicle VALUE (3, 2, 6, 5310);

INSERT INTO treballador (id_treballador, dni, nom, cognom, data_naixement, correu, telefon, supervisor_id, departament_id) 
	VALUE (1, '123456789I', 'Isaac', 'Colmenares', '2002/05/08', 'icolmenares@alumnat.copernic.cat', 625047723, null, 1);
INSERT INTO treballador (dni, nom, cognom, data_naixement, correu, telefon, supervisor_id, departament_id) 
	VALUE ('123456789E', 'Elias', 'Garcia', '1999/01/16', 'elgaria@alumnat.copernic.cat', 624746593, null, 2);
INSERT INTO treballador (dni, nom, cognom, data_naixement, correu, telefon, supervisor_id, departament_id) 
	VALUE ('123456789E', 'Emilio', 'Fernandez', '2003/10/05', 'efernandez@alumnat.copernic.cat', 615052617, 1, 1);
INSERT INTO treballador (dni, nom, cognom, data_naixement, correu, telefon, supervisor_id, departament_id) 
	VALUE ('123456789N', 'Nil', 'Arilla', '2004/06/18', 'narilla@alumnat.copernic.cat', 640528077, null, 4);
INSERT INTO treballador (dni, nom, cognom, data_naixement, correu, telefon, supervisor_id, departament_id) 
	VALUE ('123456789A', 'Alex', 'Candela', '2002/10/05', 'acandela@alumnat.copernic.cat', 616801858, null, 7);
INSERT INTO treballador (dni, nom, cognom, data_naixement, correu, telefon, supervisor_id, departament_id) 
	VALUE ('123456789D', 'Diego', 'Amador', '1999/12/31', 'dyamador@alumnat.copernic.cat', 611721732, 5, 7);
INSERT INTO treballador (dni, nom, cognom, data_naixement, correu, telefon, supervisor_id, departament_id) 
	VALUE ('123456789B', 'Biel', 'Forca', '1998/02/14', 'biforca@alumnat.copernic.cat', 611251732, 2, 2);
INSERT INTO treballador (dni, nom, cognom, data_naixement, correu, telefon, supervisor_id, departament_id) 
	VALUE ('123456789R', 'Ramon', 'Ruiz', '2001/02/21', 'raruiz@alumnat.copernic.cat', 612727732, 4, 4);
INSERT INTO treballador (dni, nom, cognom, data_naixement, correu, telefon, supervisor_id, departament_id) 
	VALUE ('123456781A', 'Aitor', 'Lopera', '1990/02/01', 'ailopera@alumnat.copernic.cat', 666721732, 5, 7);
INSERT INTO treballador (dni, nom, cognom, data_naixement, correu, telefon, supervisor_id, departament_id) 
	VALUE ('123456782E', 'Edurne', 'Schauz', '1993/02/23', 'edschauz@alumnat.copernic.cat', 611743732, 4, 5);

INSERT INTO usuari (id_usuari, nom_usuari, contrasenya, nom, cognoms, sexe, email, direccio, telefon, data_naixement)
	VALUE (1, 'Izzy', 'contrasenya1', 'Isaac', 'Colmenares Gasca', 'M', 'izzy@gmail.com', 'Pg. Major 5', 625043382, '2002/05/08');
INSERT INTO usuari (nom_usuari, contrasenya, nom, cognoms, sexe, email, direccio, telefon, data_naixement)
	VALUE ('alfred_97', 'asteric231', 'Alfredo', 'Martinez Rei', 'M', 'alfred97@gmail.com', 'C/ Mayor 5', 625233382, '1997/05/08');
INSERT INTO usuari (nom_usuari, contrasenya, nom, cognoms, sexe, email, direccio, telefon, data_naixement)
	VALUE ('mir_miss', 'ingrid29', 'Miriam', 'Romero Padilla', 'F', 'miri95@gmail.com', 'C/ Renacimiento 108', 625243382, '1995/04/23');    
INSERT INTO usuari (nom_usuari, contrasenya, nom, cognoms, sexe, email, direccio, telefon, data_naixement)
	VALUE ('Kiddo', 'megustanminitas', 'Elias', 'Garcia Fernandez', 'M', 'kiddo@gmail.com', 'C/La Garriga 54', 656321233, '1999/01/16');
INSERT INTO usuari (nom_usuari, contrasenya, nom, cognoms, sexe, email, direccio, telefon, data_naixement)
	VALUE ('emilioplayerr', 'barcelona2002', 'Emilio', 'Fernandez Vicente', 'M', 'emilio@gmail.com', 'C/Els Prats 32', 645887563, '2003/10/05');
INSERT INTO usuari (nom_usuari, contrasenya, nom, cognoms, sexe, email, direccio, telefon, data_naixement)
	VALUE ('TheGrefg', 'davidyoutuber', 'David', 'Lopez Garcia', 'M', 'thegrefg@gmail.com', 'C/Andorra123', 653321235, '1996/07/07');
INSERT INTO usuari (nom_usuari, contrasenya, nom, cognoms, sexe, email, direccio, telefon, data_naixement)
	VALUE ('maurice', 'linuxlover123', 'Alex', 'Candela', 'M', 'alex@gmail.com', 'C/Les orenetes 12', 666555444, '2002/11/26');
INSERT INTO usuari (nom_usuari, contrasenya, nom, cognoms, sexe, email, direccio, telefon, data_naixement)
	VALUE ('girlfashion_', 'fashionnew32', 'Mireia', 'Gonzalez Albala', 'F', 'mireia@gmail.com', 'Av/Barcelona 1714', 666777999, '2001/01/04');
INSERT INTO usuari (nom_usuari, contrasenya, nom, cognoms, sexe, email, direccio, telefon, data_naixement)
	VALUE ('nilarilla', 'arilla85732', 'Nil', 'Arilla Soriano', 'M', 'nil@gmail.com', 'C/Portugal 67', 656123765, '2004/06/18');
INSERT INTO usuari (nom_usuari, contrasenya, nom, cognoms, sexe, email, direccio, telefon, data_naixement)
	VALUE ('mr_xx', 'thisisnotme', 'Eric', 'Raimon Freud', 'M', 'mrxx@gmail.com', 'C/ Uknown 01', 666999333, '1989/06/18');

INSERT INTO entitat_bancaria_producte_usuari VALUE (1, 1, 1, 'OKAY'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (2, 1, 2, 'ERROR'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (1, 2, 1, 'OKAY'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (3, 4, 3, 'OKAY'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (3, 7, 3, 'ERROR'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (5, 8, 6, 'OKAY'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (5, 6, 7, 'ERROR'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (8, 7, 6, 'OKAY'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (4, 9, 5, 'ERROR'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (3, 1, 6, 'OKAY'); 
