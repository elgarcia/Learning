SHOW INDEX FROM empleat;
DROP INDEX uk_empleat_salari_comissio ON empleat;
SHOW INDEX FROM empleat;
ALTER TABLE empleat MODIFY nom VARCHAR(15) UNIQUE;
ALTER TABLE empleat MODIFY cognoms VARCHAR(30) UNIQUE;
SHOW INDEX FROM empleat;
ALTER TABLE empleat ADD INDEX ix_empleat_contracte (contracte);
SHOW INDEX FROM empleat;
CREATE INDEX ix_empleat_Salari ON empleat (salari);
SHOW INDEX FROM empleat;
ALTER TABLE empleat DROP INDEX ix_empleat_contracte;
SHOW INDEX FROM empleat;