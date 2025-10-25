SELECT
	'AssetCreation'||'-'||"o_custom_ANLB"."ID" AS "ID",
	CAST("o_custom_ANLB"."CREATED ON" AS TIMESTAMP) AS "Time",
    "o_custom_ANLB"."ID" AS ANLB
FROM "o_custom_ANLB"

