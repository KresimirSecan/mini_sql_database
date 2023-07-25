ALTER SESSION SET NLS_DATE_FORMAT ='dd-mm-yyyy'; 

--<<<<<<<<<<<<|DODAVANJE ZADANIH VRIJEDNOSTI|>>>>>>>>>>>>>--
ALTER TABLE BEZALKOHOLNA
MODIFY SECER NUMERIC(6,2) DEFAULT 0;

ALTER TABLE BEZALKOHOLNA
MODIFY KOFEIN NUMERIC(6,2) DEFAULT 0;

ALTER TABLE NARUDZBA
MODIFY DATUM DATE DEFAULT NULL;

--<<<<<<<<<<<<|DODAVANJE UVJETA|>>>>>>>>>>>>>--
ALTER TABLE ARTPOSL
ADD CONSTRAINT  KOLICINA_MIN CHECK (KOLICINA >0);

ALTER TABLE ARTIKL
ADD CONSTRAINT  CIJENA_MIN CHECK (CIJENA >0);

ALTER TABLE RADNIK
ADD CONSTRAINT  MIN_MAX_PLACA CHECK (PLACA >0 AND PLACA<2000);

ALTER TABLE VODITELJ
ADD CONSTRAINT  DOBAR_MAIL CHECK (EMAIL LIKE '%@gmail.com');

--<<<<<<<<<<<<|DODAVANJE KOMENTARA|>>>>>>>>>>>>>--
COMMENT ON TABLE SURADNIK IS 'tvrtka/institucija koja kupuje artikle';

COMMENT ON TABLE DOBAVLJAC IS 'tvrtka/institucija koje dostavlja odredene artikle';

COMMENT ON TABLE ARTIKL IS 'proizvod koji se prodaje, cijena proizvoda je u eurima';

--<<<<<<<<<<<<|DODAVANJE INDEKSA|>>>>>>>>>>>>>--
CREATE INDEX IND_CIJENA_ARTIKLA ON ARTIKL (CIJENA);

CREATE INDEX IND_IME_PREZ_VODITELJA ON VODITELJ (IME,PREZIME);

CREATE INDEX IND_PLACA_IBAN_RADNIK ON RADNIK (IBAN,PLACA);

--<<<<<<<<<<<<|KREIRANJE PROCEDURA|>>>>>>>>>>>>>--
--update datuma na narudzbi
CREATE OR REPLACE PROCEDURE update_datum_narudzba (
    n_id IN NARUDZBA.NARUDZBA_ID%TYPE,
    n_datum IN DATE 
)AS BEGIN 
    UPDATE NARUDZBA
    SET DATUM = n_datum
    WHERE NARUDZBA_ID = n_id;
    COMMIT;
    EXCEPTION WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001, 'greska update_datum_narudzba');
END;
/
--test
SELECT NARUDZBA_ID , DATUM FROM NARUDZBA;
BEGIN
  update_datum_narudzba(50,'25-07-2023');
END;
/
SELECT NARUDZBA_ID , DATUM FROM NARUDZBA;

--update place radnika u nekoj poslovnici koristeci id_poslovnice
CREATE OR REPLACE PROCEDURE placa_radnika(
    poslovnica_id IN POSLOVNICA.POSLOVNICA_ID%TYPE,
    n_povecanje IN RADNIK.PLACA%TYPE
) AS BEGIN 
    UPDATE RADNIK
    SET PLACA = PLACA + n_povecanje
    WHERE RADNIK.POSLOVNICA_ID = poslovnica_id;
    COMMIT;
    EXCEPTION WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001, 'greska placa_radnika');
END;
/
--test
SELECT RADNIK.POSLOVNICA_ID,RADNIK.PLACA FROM RADNIK
WHERE RADNIK.POSLOVNICA_ID=1;
BEGIN
  placa_radnika(1,10);
END;
/
SELECT RADNIK.POSLOVNICA_ID,RADNIK.PLACA FROM RADNIK
WHERE RADNIK.POSLOVNICA_ID=1;

--update cijena artikla koristeci artikl_id
CREATE OR REPLACE PROCEDURE update_cijena_artikl(
    n_ar_id IN ARTIKL.ARTIKL_ID%TYPE,
    n_cijena IN ARTIKL.CIJENA%TYPE
) AS BEGIN 
    UPDATE ARTIKL 
    SET CIJENA = n_cijena
    WHERE ARTIKL.ARTIKL_ID = n_ar_id;
    COMMIT;
    EXCEPTION WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001, 'greska update_cijena_artikl');
END;
/

--test
SELECT ARTIKL.ARTIKL_ID, ARTIKL.PROIZVODAC , ARTIKL.CIJENA FROM ARTIKL;
BEGIN
  update_cijena_artikl(8,12.9);
END;
/
SELECT ARTIKL.ARTIKL_ID, ARTIKL.PROIZVODAC , ARTIKL.CIJENA FROM ARTIKL;


--<<<<<<<<<<<<|KREIRANJE OKIDACA|>>>>>>>>>>>>>--

--  unesena kolicina je veca od 5000 
CREATE OR REPLACE TRIGGER kolicina_trigger
BEFORE INSERT OR UPDATE OF KOLICINA ON ARTPOSL
FOR EACH ROW
BEGIN
  IF :NEW.KOLICINA >5000  THEN
     raise_application_error(-20001, 'Molimo vas unesite manju količinu');
  END IF;
END;
/
--test
UPDATE ARTPOSL SET KOLICINA = 80000
WHERE ARTPOSL.ARTPOSL_ID = 0110;

-- datum u narudzbi je manji od danasnjeg
CREATE OR REPLACE TRIGGER datum_trigger
BEFORE INSERT OR UPDATE OF DATUM ON NARUDZBA
FOR EACH ROW
BEGIN
    IF :NEW.DATUM <SYSDATE THEN 
        raise_application_error (-20001,'Nepravilan datum');
    END IF;
END;
/
--test
UPDATE NARUDZBA SET DATUM = '02-07-2023'
WHERE NARUDZBA.NARUDZBA_ID = 50;


-- cijena prozivoda ne moze biti za 50 posto manja od sadasnje
CREATE OR REPLACE TRIGGER cijena_trigger
BEFORE INSERT OR UPDATE OF CIJENA ON ARTIKL
FOR EACH ROW
BEGIN
    IF :NEW.CIJENA < (:OLD.CIJENA*0.5) THEN
        raise_application_error(-20001,'Unešena cijena je preniska');
    END IF;
END;
/
UPDATE ARTIKL SET CIJENA = 0.2
WHERE ARTIKL.ARTIKL_ID = 4;
