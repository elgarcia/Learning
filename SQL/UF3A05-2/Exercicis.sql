CREATE FUNCTION getDescripcioQualificacio (desc VARCHAR(20))
RETURN VARCHAR(5)
BEGIN
    IF (desc='apte') THEN
        RETURN 'A';
    ELSEIF (desc='no apte') THEN
        RETURN 'NA';
    ELSE
        RETURN 'NS/NC';
    END IF;
END;

CREATE FUNCTION getApteByNota (nota SMALLINT)
RETURN VARCHAR(10)
BEGIN 
    IF (nota >= 5) THEN
        RETURN 'apte';
    ELSE
        RETURN 'no apte';
    END IF;
END;

CREATE FUNCTION getTornByHora (hora SMALLINT)
RETURN VARCHAR(10)
BEGIN
    IF (hora >= 8 && hora <=15) THEN
        RETURN 'mati';
    ELSEIF (hora >= 16 && hora <= 22) THEN
        RETURN 'tarda';
    ELSE
        RETURN '-';
    END IF;
END;