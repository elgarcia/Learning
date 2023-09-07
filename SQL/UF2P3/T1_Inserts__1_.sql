USE negoci;

#Tenim 5 departaments de manteniment. La seu principal a Castellar del Vallès amb 4 departaments i 2 a Terrassa.
#Tenim 6 departaments de distribució, situats 3 a Sabadell i 3 a Terrassa
#Tenim 6 departaments de logística, situats 3 a Sabadell i 3 a Terrassa
INSERT INTO departament (nom, ubicacio) VALUE ('Manteniment', 'Pg.Major 5');
INSERT INTO departament (nom, ubicacio) VALUE ('Manteniment', 'Pg.Major 5');
INSERT INTO departament (nom, ubicacio) VALUE ('Manteniment', 'Pg.Major 5');
INSERT INTO departament (nom, ubicacio) VALUE ('Manteniment', 'Pg.Major 5');
INSERT INTO departament (nom, ubicacio) VALUE ('Manteniment', 'C/Torrent Batlle 10');
INSERT INTO departament (nom, ubicacio) VALUE ('Manteniment', 'C/Torrent Batlle 10');
INSERT INTO departament (nom, ubicacio) VALUE ('Distribució', 'C/Sabadell 1');
INSERT INTO departament (nom, ubicacio) VALUE ('Distribució', 'C/Sabadell 3');
INSERT INTO departament (nom, ubicacio) VALUE ('Distribució', 'C/Sabadell 5');
INSERT INTO departament (nom, ubicacio) VALUE ('Distribució', 'C/Terrassa 56');
INSERT INTO departament (nom, ubicacio) VALUE ('Distribució', 'C/Terrassa 56');
INSERT INTO departament (nom, ubicacio) VALUE ('Distribució', 'C/Terrassa 56');
INSERT INTO departament (nom, ubicacio) VALUE ('Logística', 'C/Sabadell 1');
INSERT INTO departament (nom, ubicacio) VALUE ('Logística', 'C/Sabadell 3');
INSERT INTO departament (nom, ubicacio) VALUE ('Logística', 'C/Sabadell 5');
INSERT INTO departament (nom, ubicacio) VALUE ('Logística', 'C/Terrassa 56');
INSERT INTO departament (nom, ubicacio) VALUE ('Logística', 'C/Terrassa 56');
INSERT INTO departament (nom, ubicacio) VALUE ('Logística', 'C/Terrassa 56');
#Tenim 6 vehicles als departaments de distribució principals i 2 als secundaris.
INSERT INTO distribucio VALUE (7, 6);
INSERT INTO distribucio VALUE (8, 2);
INSERT INTO distribucio VALUE (9, 2);
INSERT INTO distribucio VALUE (10, 6);
INSERT INTO distribucio VALUE (11, 2);
INSERT INTO distribucio VALUE (12, 2);
#Les naus de Sabadell i Terrassa funcionen amb el mateix sistema. Una nau principal del qual es distribueix i dos del qual sobetenen els productes.
-- Capacitat mesurada en %.
INSERT INTO logistica VALUE (13, 1, 51);
INSERT INTO logistica VALUE (14, 2, 42);
INSERT INTO logistica VALUE (15, 3, 63);
INSERT INTO logistica VALUE (16, 4, 56);
INSERT INTO logistica VALUE (17, 5, 75);
INSERT INTO logistica VALUE (18, 6, 80);
#Oficina per a cada departament.
INSERT INTO manteniment VALUE (1, 1);
INSERT INTO manteniment VALUE (2, 2);
INSERT INTO manteniment VALUE (3, 3);
INSERT INTO manteniment VALUE (4, 4);
INSERT INTO manteniment VALUE (5, 1);
INSERT INTO manteniment VALUE (6, 2);

#Comptes bancaris.
INSERT INTO entitat_bancaria (caducitat, cvv, numero_compte, nom_entitat, titular) VALUE 
	( '2025/02/23', 877, 'ES1234567812345678123456', 'Caixa Bank', 'Isaac Colmenares Gasca'),
	( '2024/02/23', 247, 'ES2134567812345678123456', 'Banco Santander', 'Oscar Martinez Boix'),
	( '2023/02/23', 709, 'ES1234567812345678123458', 'Banc Sabadell', 'Elias Garcia Saenz'),
	( '2023/05/23', 455, 'ES1256781234567812345678', 'Ibercaja', 'Manolo Gutierrez Fernandez'),
	( '2024/05/23', 952, 'ES1234567812345612345678', 'Banc Sabadell', 'Nil Arilla Soriano'),
	( '2024/07/23', 892, 'ES1234567812345678145678', 'Caixa Bank', 'Emilio Fernandez Vicente'),
	( '2025/01/23', 270, 'ES1234567812194567865678', 'ING', 'Marta Hidalgo Suarez'),
	( '2025/01/21', 932, 'ES1234243567987643452454', 'BBVA', 'Francisco Garcia Garcia'),
	( '2024/01/27', 873, 'ES1234567812317567865678', 'Cajamar', 'Oriol Martinez Ramirez'),
	( '2023/02/05', 123, 'ES0678578967895689087645', 'BBVA', 'Sandra Ruiz Zafon'),
	( '2025/02/23', 103, 'ES9078956785678463535642', 'Caixa Bank', 'Samira Colmenares Gasca'),
	( '2024/02/23', 089, 'ES1234134211234134123446', 'Banco Santander', 'Miquel Martinez Boix'),
	( '2023/02/23', 789, 'ES1234322667884345333358', 'Banc Sabadell', 'Albert Pastor Calvo'),
	( '2023/05/23', 098, 'ES1644467899000002345678', 'Ibercaja', 'Alex de la Vega Gorriz'),
	( '2024/05/23', 380, 'ES1554444333332221211111', 'Banc Sabadell', 'Francina Clermont Moya'),
	( '2024/07/23', 111, 'ES1515442441588455222278', 'Caixa Bank', 'Duna Mayoral Serra'),
	( '2025/01/23', 567, 'ES3246432524353447865678', 'ING', 'Jaume Homet Parcerissa'),
	( '2025/01/21', 564, 'ES2436346424532523523423', 'BBVA', 'Joel Margall Temprano'),
	( '2024/01/27', 563, 'ES1345234523453246865678', 'Cajamar', 'Raquel Vilasis VIla'),
	( '2023/02/05', 346, 'ES7474567812332567865678', 'BBVA', 'Oriol Pages Buck'),
    ( '2025/04/23', 545, 'ES3534643352534534534534', 'ING', 'Aina Ponsa López'),
    ( '2025/07/23', 876, 'ES3456435534534534534534', 'Banc Sabadell', 'Marcos Serra Vidal'),
    ( '2026/01/23', 678, 'ES5476347565675676764534', 'Cajamar', 'Pau Vidal Esteban'),
    ( '2026/03/23', 789, 'ES5263254245345445345346', 'Banco Santander', 'Aina Masó Costa'),
    ( '2026/05/23', 890, 'ES5432344243425161616163', 'Cajamar', 'Marcos Ponsa García'),
    ( '2026/07/23', 901, 'ES5436975696885787587687', 'Cajamar', 'Pau Serra López'),
    ( '2027/01/23', 123, 'ES5443116654364567566784', 'Ibercaja', 'Aina Margall Ponsa'),
    ( '2027/03/23', 234, 'ES5436345374534534534534', 'Banc Sabadell', 'Marcos Clermont Costa'),
    ( '2027/05/23', 345, 'ES5132513275123421342234', 'Caixa Bank', 'Pau Mayoral Esteban'),
    ( '2027/07/23', 456, 'ES5632455124311132333334', 'Caixa Bank', 'Aina Homet García'),
    ( '2028/01/23', 567, 'ES5432348542353253253534', 'BBVA', 'Marcos Temprano Ponsa'),
    ( '2028/03/23', 678, 'ES5413546263413254254534', 'Banc Sabadell', 'Pau Parcerissa sCosta'),
    ( '2028/05/23', 789, 'ES5123512564123412351534', 'BBVA', 'Alex Candela Salmon');

#Tenim la main page, on penjen Productes, Carro, Perfil, FAQ, Contacte
#Dins de Productes, penjen Components, Pefiferics, Portatils i Ordinadors
#Dins de Periferics, penjen Ratolins, Teclats, Pantalles, Altaveus, Auriculars, Cadires , Taules i Ofertes
#Dins de Components, penjen Processadors i Ram
INSERT INTO pagina (nom, url, fitxer, data_darrer_manteniment, departament_id, pagina_enllacada_id ) VALUE 
	('Inici', 'www.eliaac.com/inici', 'inici.html', '2022/12/12', 1, NULL),
	('Productes', 'www.eliaac.com/Productes', 'productes.html', '2022/08/12', 1, 100),
	('Carrito', 'www.eliaac.com/Carrito', 'carrito.html', '2022/12/10', 1, 100),
	('Perfil', 'www.eliaac.com/Perfil', 'perfil.html', '2022/12/07', 2, 100),
	('FQA', 'www.eliaac.com/FAQ', 'faq.html', '2022/10/10', 4, 100),
	('Contacte', 'www.eliaac.com/Contacte', 'contactes.html', '2022/12/05', 2, 100),
	('Components', 'www.eilaac.com/Produtes/Components', 'components.html', '2022/11/12', 2, 101),
	('Periferics', 'www.eliaac.com/Productes/Periferics', 'periferics.html', '2022/11/10', 4, 101),
	('Portatils', 'www.eliaac.com/Productes/Portatils', 'portatils.html', '2022/11/03', 1, 101),
    ('Ordinadors', 'www.eliaac.com/Productes/Ordinadors', 'ordinadors.html', '2023/01/05', 1, 101),
    ('Ratolins', 'www.eliaac.com/Productes/Periferics/Ratolins', 'ratolins.html', '2022/10/28', 3, 107),
    ('Teclats', 'www.eliaac.com/Productes/Periferics/Teclats', 'teclats.html', '2023/02/01', 2, 107),
    ('Pantalles', 'www.eliaac.com/Productes/Periferics/Pantalles', 'pantalles.html', '2023/02/01', 3, 107),
    ('Altaveus', 'www.eliaac.com/Productes/Periferics/Altaveus', 'altaveus.html', '2023/02/01', 2, 107),
    ('Auriculars', 'www.eliaac.com/Productes/Periferics/Auriculars', 'auriculars.html', '2023/02/01', 3, 107),
    ('Cadires', 'www.eliaac.com/Productes/Periferics/Cadires', 'cadires.html', '2023/02/01', 1, 107),
    ('Taules', 'www.eliaac.com/Productes/Periferics/Taules', 'taules.html', '2023/02/01', 1, 107),
    ('Ofertes', 'www.eliaac.com/Productes/Periferics/Ofertes', 'ofertes.html', '2023/02/01', 4, 107),
	('Procesadors', 'www.eliaac.com/Productes/Components/Processadors', 'procesadors.html', '2023/02/01', 5, 106),
    ('Ram', 'www.eliaac.com/Productes/Components/Ram', 'ram.html', '2023/02/01', 6, 106);

#Ratolins: Razer, MSI, Logitech, Asus, Sharkoon, SteelSeries, CrossAir, Mars
#Teclats: Razer, Logitech, Mars, CrossAirs
#Pantalles: MSI,AOC,HP ,LG 
#Altaveus: Trust, Google, JBL
#Aurticulars: Acer, Logitech, Razer
#Cadires: Tempest, Playseat 
#Taules: Drift, Genesis
INSERT INTO producte (nom, preu, descripcio, tipus, pagina_id, departament_id) VALUE 
	('Razer Deathadder Elite', 59.99, 'Ratolí Gamer RGB','Ratolí', 110, 13),
	('MSI Clutch GM08', 19.99, 'Ratolí Gamer Vermell','Ratolí', 110, 13),
	('Logitech M90', 9.99, 'Ratolí cablejat','Ratolí', 110, 13),
	('Logitech B100', 13.99, 'Ratolí Gamer Logitech','Ratolí', 110, 13),
	('Sharkoon Shark Force II', 11.99, 'Ratolí Gamer Blau','Ratolí', 110, 13),
	(' Asus M4', 66.89, 'Ratolí Negre Gamer Inalàmbric','Ratolí', 110, 13),
	(' SteelSeries AeroX 3', 69.99, 'Ratolí Gamer Inalambric RGB','Ratolí', 110, 13),
	(' SteelSeries Rival 3', 39.99, 'Ratolí Gamer Negre SteelSeries','Ratolí', 110, 13),
	('CrossAir Katar Eltie', 79.99, 'Ratolí Gamer CrossAir Inalàmbric','Ratolí', 110, 13),
	('Razer Orochi V2', 59.99, 'Ratolí Gamer Razer Inalàmbric','Ratolí', 110, 14), 
    ('Razer Noga Trinity', 79.99, 'Ratolí Gamer Blau','Ratolí', 110, 13),
    ('Logitech G502 Hero', 79.99, 'Ratolí Gamer Negre','Ratolí', 110, 14),
    ('Razer Basilisk Ultimate', 159.99, 'Ratolí Gamer Groc Inalàmbric','Ratolí', 110, 13),
    ('Logitech G Pro Wireless', 179.99, 'Ratolí Gamer Vermell Inalàmbric','Ratolí', 110, 14),
    ('Razer Viper Ultimate', 149.99, 'Ratolí Gamer RGB Inalàmbric','Ratolí', 110, 13),
    ('Logitech G604 Lightspeed', 99.99, 'Ratolí Gamer Blau Inalàmbric','Ratolí', 110, 13),
    ('Logitech G203 Prodigy', 29.99, 'Ratolí Gamer Groc','Ratolí', 110, 13),
    ('Logitech G Pro', 69.99, 'Ratolí Gamer Logitech','Ratolí', 110, 13),
    ('Logitech G305 Lightspeed', 49.99, 'Ratolí cablejat','Ratolí', 110, 14),
    ('Logitech G502', 39.99, 'Ratolí Negre Gamer RGB','Ratolí', 110, 14),
    ('Mars Gaming MK50', 19.99, 'Ratolí Òptic Inalàmbric','Ratolí', 110, 13),
    ('Corsair M65 Pro', 59.99, 'Ratolí RGB Profesional','Ratolí', 110, 13), -- ratolins 22
    ('Razer Naga Trinity', 99.99, 'Teclat Gamer Negre Razer','Teclat', 111, 13),
    ('Logitech G910', 79.99, 'Teclat Gamer Mecànic','Teclat', 111, 13),
    ('Mars Gaming MK55', 24.99, 'Teclat Mecànic Negre RGB','Teclat', 111, 13),
    ('Corsair K95 RGB', 199.99, 'Teclat Gamer Profesional Inalàmbric','Teclat', 111, 13),
    ('Razer Ornata Chroma', 79.99, 'Teclat Mecànic RGB Inalàmbric','Teclat', 111, 13),
    ('Logithech K120', 14.58, 'Teclat Gamer Negre RGB','Teclat', 111, 14),
    ('Mars Gaming MK60', 28.99, 'Teclat Blanc Switch Mecànic','Teclat', 111, 13),
    ('Crosair K100 Air', 300, 'Teclat Mini Profesional Inalàmbric','Teclat', 111, 13),
    ('Razer BlackWidow V3', 89.99, 'Teclat Gamer Razer','Teclat', 111, 13), -- teclats 31 --
    ('MSI PRO 34"', 378.98, 'Pantalla Led Curva','Pantalla', 111, 13),
    ('AOC 27" LED', 140.24, 'Pantalla FullHD','Pantalla', 111, 13),
    ('MSI PRO 37"', 278.98, 'Pantalla Led Curva IPS','Pantalla', 111, 14),
    ('LG LED 24"', 67.35, 'Pantalla Reacondicionada HD','Pantalla', 111, 13),
    ('HP X27 27"', 273.99, 'Pantalla FreeSync Premium Curva','Pantalla', 111, 13), -- pantalles 36
    ('Trust Almo', 12.98, 'Altaveus 2.0 Negros','Altaveu', 112, 16),
    ('Google Nest Mini', 32.39, 'Altaveu Inteligent i Asistent','Altaveu', 112, 16),
    ('JBL Xtreme 3', 345.77, 'Altaveu Bluetooths','Altaveu', 112, 16), -- altaveus 39
    ('Acer PRedator Galea 350', 68.99, 'Auriculars Negres','Auriculars', 113, 16),
    ('Logitech G435 LIGHTSPEED', 68.99, 'Auriculars Gaming Inalàmbric','Auriculars', 113, 16),
    ('Logitech G445 LIGHTSPEED', 78.99, 'Auriculars Treballar Inalàmbric','Auriculars', 113, 17),
    ('Razer Barracua Pro', 264.99, 'Auriculars Negre Inalàmbric','Auriculars', 113, 16), -- auriculars 43
    ('Playseat F1', 1304, 'Cadira Vermell Gaming','Cadira', 114, 16),
    ('Tempest F36', 174.99, 'Cadira Blanca amb Reposapeus','Cadira', 114, 16),
    ('Nacon CH-550', 149.99, 'Cadira Blava Gamer WoW','Cadira', 114, 16), -- cadira 46
    ('Drift DZ75', 203.82, 'Taula Negre RGB','Taula', 115, 18),
    ('Genesis Holm ', 105.99, 'Taula Blanca RGB','Taula', 115, 18), -- taula 48
    ('Intel Core i5', 132.99, 'Processador 11400F 2.6GHZ','Processador', 118, 16),
    ('AMD Ryzen 5', 179.99, 'Processador 3.5GHZ','Processador', 118, 16),
    ('AMD Ryzen 5', 198.99, 'Processador 3.7GHZ','Processador', 118, 16),
    ('Intel Core i5', 179.99, 'Processador 12400F 2.5GHZ','Processador',118, 16),
    ('Intel Core i7', 337.99, 'Processador 12700F 2.1GHZ','Processador', 118, 16),
    ('AMD Ryzen 7', 254.04, 'Processador 3.8GHZ','Processador', 118, 16),
    ('AMD Ryzen 9', 508.99, 'Processador 4.7GHZ','Processador', 118, 16),
	('Intel Core i9', 659, 'Processador 13900K 3.0GHZ','Processador', 118, 16), -- processadors 56
    ('Kingston DDR5 32GB', 145.00, 'RAM 2x16GB','RAM', 119, 16),
    ('Crosair 16GB DDR4', 56.99, 'RAM 2x8GB','RAM', 119, 16); -- ram 58
#Tenim 20 vehiles
INSERT INTO vehicle (matricula, kms) VALUE ( 'BOB6969', 250964);
INSERT INTO vehicle (matricula, kms) VALUE ( 'BOB8606', 223456);
INSERT INTO vehicle (matricula, kms) VALUE ( 'BOB9765', 201789);
INSERT INTO vehicle (matricula, kms) VALUE ( 'FGD2378', 156345);
INSERT INTO vehicle (matricula, kms) VALUE ( 'GHL0903', 64320);
INSERT INTO vehicle (matricula, kms) VALUE ( 'JML5931', 45632);
INSERT INTO vehicle (matricula, kms) VALUE ( 'JML7854', 44567);
INSERT INTO vehicle (matricula, kms) VALUE ( 'JML9731', 35032);
INSERT INTO vehicle (matricula, kms) VALUE ( 'LCK4964', 10457);
INSERT INTO vehicle (matricula, kms) VALUE ( 'LCK6209', 8453);
INSERT INTO vehicle (matricula, kms) VALUE ( 'JML9086', 67890);
INSERT INTO vehicle (matricula, kms) VALUE ( 'JML7462', 56789);
INSERT INTO vehicle (matricula, kms) VALUE ( 'LCK7362', 34567);
INSERT INTO vehicle (matricula, kms) VALUE ( 'LCK8954', 24678);
INSERT INTO vehicle (matricula, kms) VALUE ( 'JML9082', 67891);
INSERT INTO vehicle (matricula, kms) VALUE ( 'LCK7362', 34568);
INSERT INTO vehicle (matricula, kms) VALUE ( 'JML9086', 78901);
INSERT INTO vehicle (matricula, kms) VALUE ( 'JML7462', 67890);
INSERT INTO vehicle (matricula, kms) VALUE ( 'LCK7362', 45678);
INSERT INTO vehicle (matricula, kms) VALUE ( 'LCK8954', 34679);


INSERT INTO distribucio_producte_vehicle VALUE (1, 4, 7, 1910);
INSERT INTO distribucio_producte_vehicle VALUE (1, 20, 7, 1910);
INSERT INTO distribucio_producte_vehicle VALUE (1, 40, 7, 1910);
INSERT INTO distribucio_producte_vehicle VALUE (13, 56, 7, 3426);
INSERT INTO distribucio_producte_vehicle VALUE (13, 57, 7, 3426);
INSERT INTO distribucio_producte_vehicle VALUE (7, 45, 10, 7777);
INSERT INTO distribucio_producte_vehicle VALUE (7, 48, 10, 7777);
INSERT INTO distribucio_producte_vehicle VALUE (3, 20, 10, 7895);
INSERT INTO distribucio_producte_vehicle VALUE (3, 48, 10, 7895);


INSERT INTO treballador (dni, nom, cognom, data_naixement, correu, telefon, supervisor_id, departament_id) VALUE
	( '123456789I', 'Isaac', 'Colmenares', '2002/05/08', 'icolmenares@alumnat.copernic.cat', 625047723, null, 1),
	('123456789E', 'Elias', 'Garcia', '1999/01/16', 'elgaria@alumnat.copernic.cat', 624746593, null, 5),
	('123456789E', 'Emilio', 'Fernandez', '2003/10/05', 'efernandez@alumnat.copernic.cat', 615052617, 1, 1),
	('123456789N', 'Nil', 'Arilla', '2004/06/18', 'narilla@alumnat.copernic.cat', 640528077, null, 7),
	('123456789A', 'Alex', 'Candela', '2002/10/05', 'acandela@alumnat.copernic.cat', 616801858, null, 16),
	('123456789D', 'Diego', 'Amador', '1999/12/31', 'dyamador@alumnat.copernic.cat', 611721732, 1, 1),
	('123456789B', 'Biel', 'Forca', '1998/02/14', 'biforca@alumnat.copernic.cat', 611251732, 1, 1),
	('123456789R', 'Ramon', 'Ruiz', '2001/02/21', 'raruiz@alumnat.copernic.cat', 612727732, 1, 2),
	('123456781A', 'Aitor', 'Lopera', '1990/02/01', 'ailopera@alumnat.copernic.cat', 666721732, 1, 3),
	('123456782E', 'Edurne', 'Schauz', '1993/02/23', 'edschauz@alumnat.copernic.cat', 611743732, 1, 4),
    ('123456783F', 'Fernando', 'Garcia', '1995/04/30', 'fegarcia@alumnat.copernic.cat', 611786732, 2, 5),
    ('123456784G', 'Gema', 'Gonzalez', '1996/05/15', 'gegonzalez@alumnat.copernic.cat', 611726732, 2, 6),
    ('123456785H', 'Hector', 'Lopez', '1997/07/20', 'helopez@alumnat.copernic.cat', 611752732, 5, 13),
    ('123456786J', 'Juan', 'Martinez', '1999/09/10', 'jumartinez@alumnat.copernic.cat', 611773732, 5, 16),
    ('123456787K', 'Karen', 'Perez', '2000/10/25', 'kaperez@alumnat.copernic.cat', 611794732, 5, 14),
    ('123456788L', 'Laura', 'Sanchez', '2002/12/30', 'lasanchez@alumnat.copernic.cat', 611732732, 5, 16),
    ('123456789M', 'Manuel', 'Vazquez', '2004/03/15', 'mavazquez@alumnat.copernic.cat', 611761732, 5, 15),
    ('123456780N', 'Nerea', 'Alvarez', '1990/05/20', 'nealvarez@alumnat.copernic.cat', 611774732, 5, 17),
    ('123456781O', 'Oscar', 'Castillo', '1992/07/10', 'oscastillo@alumnat.copernic.cat', 611758732, 4, 7),
    ('123456782P', 'Pedro', 'Diaz', '1994/09/25', 'pediaz@alumnat.copernic.cat', 611739732, 4, 8),
    ('123216781O', 'Olivia', 'Fernandez', '1999/07/04', 'olfernandez@alumnat.copernic.cat', 611795732, 4, 9),
	('123456782P', 'Paula', 'Garcia', '1995/09/10', 'pagarcia@alumnat.copernic.cat', 611780732, 4, 10), 
	('123456783Q', 'Qiana', 'Jimenez', '1996/11/17', 'qijimenez@alumnat.copernic.cat', 611753732, 4, 11), 
	('123456784R', 'Rocio', 'Martinez', '1998/01/25', 'romartinez@alumnat.copernic.cat', 611778732, 4, 12), 
	('123456785S', 'Sandra', 'Ortega', '2001/04/01', 'sortega@alumnat.copernic.cat', 611792732, 2, 5), 
	('123456786T', 'Tania', 'Ruiz', '2003/06/10', 'taruiz@alumnat.copernic.cat', 611796732, 2, 6);

INSERT INTO usuari (nom_usuari, contrasenya, nom, cognoms, sexe, email, direccio, telefon, data_naixement) VALUE
	('Izzy', 'contrasenya1', 'Isaac', 'Colmenares Gasca', 'M', 'izzy@gmail.com', 'Pg. Major 5', 625043382, '2002/05/08'),
	('alfred_97', 'asteric231', 'Alfredo', 'Martinez Rei', 'M', 'alfred97@gmail.com', 'C/ Mayor 5', 625233382, '1997/05/08'),
	('mir_miss', 'ingrid29', 'Miriam', 'Romero Padilla', 'F', 'miri95@gmail.com', 'C/ Renacimiento 108', 625243382, '1995/04/23'),
	('Kiddo', 'megustanminitas', 'Elias', 'Garcia Fernandez', 'M', 'kiddo@gmail.com', 'C/La Garriga 54', 656321233, '1999/01/16'),
	('emilioplayerr', 'barcelona2002', 'Emilio', 'Fernandez Vicente', 'M', 'emilio@gmail.com', 'C/Els Prats 32', 645887563, '2003/10/05'),
	('TheGrefg', 'davidyoutuber', 'David', 'Lopez Garcia', 'M', 'thegrefg@gmail.com', 'C/Andorra123', 653321235, '1996/07/07'),
	('maurice', 'linuxlover123', 'Alex', 'Candela', 'M', 'alex@gmail.com', 'C/Les orenetes 12', 666555444, '2002/11/26'),
	('girlfashion_', 'fashionnew32', 'Mireia', 'Gonzalez Albala', 'F', 'mireia@gmail.com', 'Av/Barcelona 1714', 666777999, '2001/01/04'),
	('nilarilla', 'arilla85732', 'Nil', 'Arilla Soriano', 'M', 'nil@gmail.com', 'C/Portugal 67', 656123765, '2004/06/18'),
	('mr_xx', 'thisisnotme', 'Eric', 'Raimon Freud', 'M', 'mrxx@gmail.com', 'C/ Uknown 01', 666999333, '1989/06/18'),
    ('jose_coder', 'coderslife', 'Jose', 'Garcia Lopez', 'M', 'jose@gmail.com', 'C/Albacete 5', 654321987, '1997/03/14'),
    ('susan_singer', 'singing_susan', 'Susan', 'Gonzalez Albala', 'F', 'susan@gmail.com', 'Av/Madrid 8', 667778899, '1999/09/12'),
    ('julio_gamer', 'gaming_julio', 'Julio', 'Gonzalez Lopez', 'M', 'julio@gmail.com', 'C/Valencia 15', 654321987, '1995/12/25'),
    ('juan_teacher', 'teaching_juan', 'Juan', 'Garcia Soriano', 'M', 'juan@gmail.com', 'C/Sevilla 12', 665444555, '2001/09/07'),
    ('sebas_', 'sebas715', 'Sebastian', 'Ramon', 'M', 'sebas@gmail.com', 'C/Martinez 10', 654433222, '1994/11/12'),
    ('silvix_x', 'silvixlove', 'Silvia', 'Marin Carreto', 'F', 'silvia@gmail.com', 'C/Heredias 123', 667776766, '1995/06/10'),
    ('tejanito_', 'tejax123', 'Teo', 'Garcia Esquivel', 'M', 'teo@gmail.com', 'C/ Caimos 5', 665321465, '2001/09/12'),
    ('velariz', 'rizvelanew', 'Riz', 'Velasco', 'M', 'riz@gmail.com', 'C/San Blas 7', 645890567, '1996/02/14'),
    ('antonio_x', 'antonio75', 'Antonio', 'Lopez Hernandez', 'M', 'antonio@gmail.com', 'C/La casa 25', 656789021, '1999/10/23'),
    ('analucias', 'lucasana32', 'Ana', 'Lucia Sanz', 'F', 'ana@gmail.com', 'C/Ignacio 85', 679089007, '2003/07/15'),
    ('camelor22', 'camelo45', 'Carmen', 'Lorenzo', 'F', 'carmen@gmail.com', 'C/ Serranos 9', 645767897, '1989/12/28'),
    ('juanita78', 'juanna86', 'Juana', 'Gomez Lopez', 'F', 'juana@gmail.com', 'Av/ Murgueitas 23', 656345890, '1998/04/11'),
	('achris_', 'chrisalba74', 'Cristina', 'Alba Amengual', 'F', 'cristina@gmail.com', 'C/ Gredos 34', 666778899, '1993/05/02');

INSERT INTO entitat_bancaria_producte_usuari VALUE (4, 4, 3, 'OKAY'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (4, 25, 7, 'ERROR'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (4, 40, 3, 'OKAY'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (4, 20, 3, 'OKAY'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (2, 33, 7, 'ERROR'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (9, 56, 5, 'OKAY'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (2, 37, 17, 'ERROR'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (9, 57, 5, 'OKAY'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (7, 45, 33, 'OKAY'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (7, 48, 33, 'OKAY'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (5, 20, 6, 'OKAY'); 
INSERT INTO entitat_bancaria_producte_usuari VALUE (5, 48, 6, 'OKAY'); 

#Garatge

INSERT INTO garatge (numero, capacitat) VALUE (1, 3);
INSERT INTO garatge (numero, capacitat) VALUE (2, 4);
INSERT INTO garatge (numero, capacitat) VALUE (3, 3);
INSERT INTO garatge (numero, capacitat) VALUE (4, 5);
INSERT INTO garatge (numero, capacitat) VALUE (5, 2);
INSERT INTO garatge (numero, capacitat) VALUE (6, 3);
INSERT INTO garatge (numero, capacitat) VALUE (7, 4);
INSERT INTO garatge (numero, capacitat) VALUE (8, 3);
INSERT INTO garatge (numero, capacitat) VALUE (9, 5);
INSERT INTO garatge (numero, capacitat) VALUE (10, 3);
INSERT INTO garatge (numero, capacitat) VALUE (11, 3);
INSERT INTO garatge (numero, capacitat) VALUE (12, 4);
INSERT INTO garatge (numero, capacitat) VALUE (13, 3);
INSERT INTO garatge (numero, capacitat) VALUE (14, 2);
INSERT INTO garatge (numero, capacitat) VALUE (15, 3);
INSERT INTO garatge (numero, capacitat) VALUE (16, 1);
INSERT INTO garatge (numero, capacitat) VALUE (17, 3);
INSERT INTO garatge (numero, capacitat) VALUE (18, 2);
INSERT INTO garatge (numero, capacitat) VALUE (19, 3);
INSERT INTO garatge (numero, capacitat) VALUE (20, 5);

#Porta

INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (1, 2, 1);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (2, 3, 2);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (3, 4, 3);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (4, 5, 4);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (5, 6, 5);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (6, 7, 6);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (7, 8, 7);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (8, 10, 8);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (9, 9, 9);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (10, 11, 10);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (11, 12, 11);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (12, 14, 12);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (13, 13, 13);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (14, 15, 14);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (15, 17, 15);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (16, 18, 16);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (17, 16, 17);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (18, 19, 18);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (19, 20, 19);
INSERT INTO porta (id_garatge, vehicle_id, numero) VALUE (20, 1, 20);

#Proveedor
INSERT INTO proveedor (nom, ubicacio) VALUE ('Razer', 'Barcelona');
INSERT INTO proveedor (nom, ubicacio) VALUE ('Logitech', 'Madrid');
INSERT INTO proveedor (nom, ubicacio) VALUE ('HP', 'Valencia');
INSERT INTO proveedor (nom, ubicacio) VALUE ('AMD', 'Barcelona');
INSERT INTO proveedor (nom, ubicacio) VALUE ('Acer', 'Murcia');
INSERT INTO proveedor (nom, ubicacio) VALUE ('Microsoft', 'Zaragoza');
INSERT INTO proveedor (nom, ubicacio) VALUE ('MSI', 'Madrid');
INSERT INTO proveedor (nom, ubicacio) VALUE ('Steelseries', 'Cantabria');
INSERT INTO proveedor (nom, ubicacio) VALUE ('Crossair', 'Valencia');
INSERT INTO proveedor (nom, ubicacio) VALUE ('LG', 'Barcelona');
INSERT INTO proveedor (nom, ubicacio) VALUE ('Mars', 'Barcelona');
INSERT INTO proveedor (nom, ubicacio) VALUE ('JBL', 'Madrid');
INSERT INTO proveedor (nom, ubicacio) VALUE ('Drift', 'Zaragoza');
INSERT INTO proveedor (nom, ubicacio) VALUE ('Kingston', 'Valencia');
INSERT INTO proveedor (nom, ubicacio) VALUE ('Ozone', 'Madrid');
INSERT INTO proveedor (nom, ubicacio) VALUE ('Samsung', 'Barcelona');
INSERT INTO proveedor (nom, ubicacio) VALUE ('Intel', 'Madrid');
INSERT INTO proveedor (nom, ubicacio) VALUE ('Newskill', 'Malaga');
INSERT INTO proveedor (nom, ubicacio) VALUE ('Forgeon', 'Murcia');
INSERT INTO proveedor (nom, ubicacio) VALUE ('Owlotech', 'Zaragoza');

#Proveedor_producte
INSERT INTO proveedor_producte VALUE (1, 1, 20);
INSERT INTO proveedor_producte VALUE (2, 3, 10);
INSERT INTO proveedor_producte VALUE (3, 38, 31);
INSERT INTO proveedor_producte VALUE (4, 53, 15);
INSERT INTO proveedor_producte VALUE (5, 42, 17);

