SELECT DISTINCT 'PORequestedDelivery' || '_' || "VendorConfirmation"."ID" AS "ID",
       "VendorConfirmation"."ConfirmationDeliveryDate"                  AS "Time",
       "VendorConfirmation"."ID" AS "VendorConfirmation"
FROM "o_celonis_VendorConfirmation" AS "VendorConfirmation"
WHERE "VendorConfirmation"."ConfirmationDeliveryDate" IS NOT NULL
