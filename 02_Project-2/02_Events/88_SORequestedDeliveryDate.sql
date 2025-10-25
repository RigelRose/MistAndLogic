SELECT DISTINCT 'SORequestedDeliveryDate' || '_' || "SalesOrder"."ID" AS "ID",
       "SalesOrder"."RequestedDeliveryDate"               AS "Time",
       "SalesOrder"."ID" AS "SalesOrder"
FROM "o_celonis_SalesOrder" AS "SalesOrder"
WHERE "SalesOrder"."RequestedDeliveryDate" IS NOT NULL
