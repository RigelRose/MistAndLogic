SELECT 'CancelSalesOrderItem' || '_' || "SalesOrderItem_Changes"."ID"        AS "ID",
       "SalesOrderItem"."ID"                                                 AS "SalesOrderItem",
       "SalesOrderItem_Changes"."Time"                                       AS "Time",
       "SalesOrderItem_Changes"."ChangedBy"                                  AS "ExecutedBy",
       "SalesOrderItem_Changes"."ExecutionType"                              AS "ExecutionType",
       "SalesOrderItem_Changes"."OldValue"                                   AS "OldValue",
       "SalesOrderItem_Changes"."NewValue"                                   AS "NewValue"
       
FROM "o_celonis_SalesOrderItem" AS "SalesOrderItem"
         LEFT JOIN "c_o_celonis_SalesOrderItem" AS "SalesOrderItem_Changes"
                   ON "SalesOrderItem"."ID" = "SalesOrderItem_Changes"."ObjectID"
                       AND "SalesOrderItem_Changes"."Attribute" IN
                           ('RejectionReason')
WHERE "SalesOrderItem_Changes"."Time" IS NOT NULL
  AND "SalesOrderItem_Changes"."OldValue" IS NULL
  AND "SalesOrderItem_Changes"."NewValue" IS NOT NULL
