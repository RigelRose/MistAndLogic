  SELECT
    so."CreationTime" AS "HeaderCreationTime",
    si."CreationTime" AS "ItemCreationTime"
   
FROM
    <%=BUSINESS_GRAPH%>."o_celonis_SalesOrderItem" AS si
    JOIN <%=BUSINESS_GRAPH%>."o_celonis_SalesOrder" AS so ON si."Header_ID" = so."ID" 

SELECT
    so."ID" AS "HeaderID",
    so."CreationTime" AS "HeaderCreationTime",
    si."CreationTime" AS "ItemCreationTime"
FROM
    <%=BUSINESS_GRAPH%>."o_celonis_SalesOrderItem" AS si
    JOIN <%=BUSINESS_GRAPH%>."o_celonis_SalesOrder" AS so ON si."Header_ID" = so."ID"
WHERE
    so."CreationTime" > si."CreationTime"
    ORDER BY so."CreationTime" LIMIT 1000 
 


--=====================================================================================================================================
SELECT VGBEL, VBELN FROM VBAK

SELECT VDATU,* FROM VBAK WHERE VBELN = '7000000096'

UPDATE VBAK 
SET VDATU = VDATU - 390
WHERE VBELN = '7000000096'

select lfdat,* from likp where vbeln in ('80001398')
 = '80001321'

select vgbel,vbeln,* from lips where vgbel = '7000000054'

SELECT * FROM LIPS WHERE VGBEL in ('7000000131')

UPDATE LIKP 
SET LFDAT = CAST(LFDAT AS DATE) + 379
WHERE VBELN in ('80272443')

select lfdat, * from likp where  VBELN = '80001303'


--================================================================================================================================
select * from ekes     -- vendor confirmation and PO
select * from "EKPO" 

select EINDT,* from EKES where EBELN = '8600000025' 
UPDATE EKES  SET EINDT = EINDT + 3

select EINDT,* from EKES where EBELN = '8600000025' 
UPDATE EKES  SET EINDT = EINDT + 3

select EINDT, * from EKES where EBELN = '5810000024' 
UPDATE EKES SET EINDT = CAST(EINDT AS DATE) - 1254 WHERE EBELN in ('5810000024')
select EINDT, * from EKET where EBELN = '5810000024' 
UPDATE EKES SET EINDT = CAST(EINDT AS DATE) + WHERE EBELN in ('5810000024')

select EINDT, * from EKES where EBELN = '5810000139' 
UPDATE EKES SET EINDT = CAST(EINDT AS DATE) - 1261 WHERE EBELN in ('5810000139')

select EINDT, * from EKES where EBELN = '5810000599' 
UPDATE EKES SET EINDT = CAST(EINDT AS DATE) -1384 WHERE EBELN in ('5810000599')
UPDATE EKES SET EINDT = CAST(EINDT AS DATE) +3 WHERE EBELN in ('5810000599')


select EINDT, * from EKES where EBELN = '5810000657' 
UPDATE EKES SET EINDT = CAST(EINDT AS DATE) - 865 WHERE EBELN in ('5810000657')


select EINDT, * from EKES where EBELN = '8600000007' 
UPDATE EKES SET EINDT = CAST(EINDT AS DATE) - 2 WHERE EBELN in ('8600000007')

select EINDT, * from EKES where EBELN = '5810000399' 
UPDATE EKES SET EINDT = CAST(EINDT AS DATE) - 795 WHERE EBELN in ('5810000399')


select EINDT, * from EKES where EBELN = '5810000566' 
UPDATE EKES SET EINDT = CAST(EINDT AS DATE) -829 WHERE EBELN in ('5810000566')
UPDATE EKES SET EINDT = CAST(EINDT AS DATE) +4 WHERE EBELN in ('5810000566')

select EINDT, * from EKES where EBELN = '8600000207' 
UPDATE EKES SET EINDT = CAST(EINDT AS DATE) - 2 WHERE EBELN in ('8600000207')

select MANDT, LIFNR  from ekko WHERE EBELN = '5810000457'
UPDATE EKKO SET LIFNR = '14009' WHERE EBELN = '5810000457'

select MANDT, LIFNR  from ekko WHERE EBELN = '5810000560'
UPDATE EKKO SET LIFNR = '9501' WHERE EBELN = '5810000560'

select MANDT, LIFNR  from ekko WHERE EBELN = '5810001366'
UPDATE EKKO SET LIFNR = '720000' WHERE EBELN = '5810001366'



