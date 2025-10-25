SELECT DISTINCT 'PODeliveryDate' || '_' || "PurchaseOrderScheduleLine"."ID" AS "ID",
       "PurchaseOrderScheduleLine"."ItemDeliveryDate"                  AS "Time",
       "PurchaseOrderScheduleLine"."ID" AS "PurchaseOrderScheduleLine"
FROM "o_celonis_PurchaseOrderScheduleLine" AS "PurchaseOrderScheduleLine"
WHERE "PurchaseOrderScheduleLine"."ItemDeliveryDate"  IS NOT NULL
