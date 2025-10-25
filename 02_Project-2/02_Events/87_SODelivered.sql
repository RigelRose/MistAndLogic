SELECT DISTINCT 'SODelivered'|| '_' || "Delivery"."ID" AS "ID",
       "Delivery"."DeliveryDate"                        AS "Time",
       "Delivery"."ID" AS Delivery
FROM "o_celonis_Delivery" AS "Delivery"
WHERE "Delivery"."DeliveryDate" IS NOT NULL
