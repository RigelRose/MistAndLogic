SELECT DISTINCT "TABNAME"
FROM "CDPOS"
ORDER BY "TABNAME";

SELECT DISTINCT "FNAME"
FROM "CDPOS"
WHERE "TABNAME" = 'KNA1';


select * from EKET
select * from EKES
select * from EKKO
select * from ekpo

SELECT
    eket.MANDT,
    eket.EBELN,
    eket.EBELP,
    eket.ETENR,
    eket.EINDT,
    eket.MENGE,
    ekpo.TXZ01 AS DESCRIPTION,
    ekpo.MATNR AS MATERIAL,
    ekpo.MENGE AS ORDER_QTY,
    ekpo.NETWR AS NET_VALUE
FROM
    EKET eket
INNER JOIN
    EKPO ekpo
ON
    eket.MANDT = ekpo.MANDT AND
    eket.EBELN = ekpo.EBELN AND
    '000'||eket.EBELP = ekpo.EBELP;

SELECT COUNT(*) AS match_count
FROM EKET AS ekt
INNER JOIN EKPO AS ekpo
ON ekt.MANDT = epo.MANDT
AND ekt.EBELN = epo.EBELN
AND LPAD(ekt.EBELP, 5, '0') = epo.EBELP;


select * from EKES
select * from ekpo

SELECT
    ekpo.MANDT,
    ekpo.EBELN,
    ekpo.EBELP,
    ekpo.MATNR,
    ekpo.MENGE AS ORDERED_QUANTITY,
    ekes.EINDT AS CONFIRMED_DELIVERY_DATE,
    ekes.MENGE AS CONFIRMED_QUANTITY
FROM EKPO AS ekpo
INNER JOIN EKES AS ekes
    ON ekpo.MANDT =  ekes.MANDT
    AND ekpo.EBELN = ekes.EBELN
    AND ekpo.EBELP = ekes.EBELP
LIMIT 10;

Describe EKET;

ALTER TABLE EKET ALTER COLUMN EBELP SET DATA TYPE VARCHAR(5);   -- GENERAL SYNTAX
ALTER TABLE EKES ALTER COLUMN EBELP SET DATA TYPE VARCHAR(5);   -- GENERAL SYNTAX
ALTER TABLE EKBE ALTER COLUMN EBELP SET DATA TYPE VARCHAR(5);   -- GENERAL SYNTAX

UPDATE EKET
SET EBELP = LPAD(CAST(EBELP AS VARCHAR), 5, '0')
WHERE EBELP IS NOT NULL;

UPDATE EKES
SET EBELP = LPAD(CAST(EBELP AS VARCHAR), 5, '0')
WHERE EBELP IS NOT NULL;

UPDATE EKBE
SET EBELP = LPAD(CAST(EBELP AS VARCHAR), 5, '0')
WHERE EBELP IS NOT NULL;

-- CustomerAccountCreditItem & SalesOrder
SELECT
    bkpf.BUKRS, bkpf.BELNR, bkpf.GJAHR, bkpf.BLDAT,
    bkpf.AWTYP, bkpf.AWKEY,
    vbak.VBELN, vbak.AUART, vbak.VKORG, vbak.KUNNR
FROM  BKPF bkpf
JOIN 
    VBAK vbak ON bkpf.AWTYP = 'VBAK'  AND bkpf.AWKEY = vbak.VBELN
WHERE bkpf.BUKRS = '1300'  -- example company code                 0923  1009 1222  1300  0001

--======================================================================================================================

SELECT bkpf.BUKRS, bkpf.BELNR, bkpf.GJAHR, bkpf.BLDAT, bkpf.AWTYP, bkpf.AWKEY,
       vbak.VBELN, vbak.AUART, vbak.VKORG, vbak.KUNNR
FROM BKPF bkpf
JOIN VBAK vbak ON bkpf.AWTYP = 'VBAK' AND bkpf.AWKEY = vbak.VBELN
WHERE bkpf.BUKRS = '1300'


select distinct ELIKZ from "EKBE"
select ELIKZ from "EKPO"

select elikz from VBAP


SELECT * FROM "EKBE"
SELECT * FROM EKPO

ALTER TABLE EKBE ALTER COLUMN EBELP SET DATA TYPE VARCHAR(5);   -- GENERAL SYNTAX

UPDATE EKBE SET EBELP = LPAD(CAST(EBELP AS VARCHAR), 5, '0')
WHERE EBELP IS NOT NULL;

SELECT
    EKPO.MANDT || EKPO.EBELN || EKPO.EBELP AS CASE_KEY,
    EKBE.BUDAT AS PostingDate,
    EKPO.WEBRE AS InvoiceAfterGoodsReceiptIndicator,
    EKBE.ELIKZ AS DeliveryCompletedIndicator, 
    EKPO.LOEKZ AS DeletionIndicator
FROM 
    EKPO
JOIN 
    EKBE ON EKPO.EBELN = EKBE.EBELN AND EKPO.EBELP = EKBE.EBELP
WHERE EKPO.BSTYP = 'F'
-- AND EKBE.ELIKZ IS NOT NULL 



