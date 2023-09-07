SHOW INDEX FROM departament;
ALTER TABLE departament ADD PRIMARY KEY (id_departament);
SHOW INDEX FROM departament;
ALTER TABLE departament MODIFY nom VARCHAR(9) UNIQUE;
SHOW INDEX FROM departament;
ALTER TABLE departament DROP INDEX nom;
SHOW INDEX FROM departament;