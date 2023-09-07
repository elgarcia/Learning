USE negoci;

#Creem diferents usuaris
CREATE USER Juan IDENTIFIED BY 'Director';
CREATE USER Andrea IDENTIFIED BY 'Subdirector';
CREATE USER Alba IDENTIFIED BY 'Empleat'; 
CREATE USER Alberto IDENTIFIED BY 'Empleat';
CREATE USER Sandra IDENTIFIED BY 'Usuari';
CREATE USER Ian IDENTIFIED BY 'Usuari';
CREATE USER Jorge IDENTIFIED BY 'Usuari';
CREATE USER Luis IDENTIFIED BY 'Usuari';
CREATE USER Abril IDENTIFIED BY 'Usuari';
CREATE USER Nuria IDENTIFIED BY 'Usuari';

#Rols dadministrador, client i personal de manteniment
CREATE ROLE administrador, client. manteniment;

#Afegim superusuari a totes les bases de dades i a la nostra
GRANT ALL PRIVILEGES ON . TO Juan IDENTIFIED BY 'Director' WITH GRANT OPTION;
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON negoci. TO Andrea IDENTIFIED BY 'Subdirector' WITH GRANT OPTION;
FLUSH PRIVILEGES;

#Afegim usuaris a rols
SET DEFAULT ROLE  administrador FOR 'Director';
FLUSH PRIVILEGES;
SET DEFAULT ROLE  administrador FOR 'Subdirector';
FLUSH PRIVILEGES;
SET DEFAULT ROLE  manteniment FOR 'Alba';
FLUSH PRIVILEGES;
SET DEFAULT ROLE  manteniment FOR 'Alberto';
FLUSH PRIVILEGES;
SET DEFAULT ROLE  client FOR 'Sandra';
FLUSH PRIVILEGES;
SET DEFAULT ROLE  client FOR 'Ian';
FLUSH PRIVILEGES;
SET DEFAULT ROLE  client FOR 'Jorge';
FLUSH PRIVILEGES;
SET DEFAULT ROLE  client FOR 'Luis';
FLUSH PRIVILEGES;
SET DEFAULT ROLE  client FOR 'Abril';
FLUSH PRIVILEGES;
SET DEFAULT ROLE  client FOR 'Nuria';
FLUSH PRIVILEGES;


#Afegim i treiem permisos a usuaris
GRANT SELECT, UPDATE, INSERT, DELETE
    ON negoci.*
    TO Alba IDENTIFIED BY 'Empleat';

GRANT ALTER, UPDATE
    ON negoci.*
    TO Alberto IDENTIFIED BY 'Empleat';

GRANT SELECT
    ON negoci.*
    TO Alberto IDENTIFIED BY 'Empleat';
    WITH GRANT OPTION;  

REVOKE DELETE
    ON negoci.*
    FROM Alba;

REVOKE ALTER
    ON negoci.*
    FROM Alba;

REVOKE SELECT
    ON negoci.*
    FROM Alba;


    
