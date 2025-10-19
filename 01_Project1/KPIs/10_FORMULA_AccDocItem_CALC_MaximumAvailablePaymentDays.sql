FORMULA_AccDocItem_CALC_MaximumAvailablePaymentDays :

ROUND(
  CASE WHEN 
    "BSEG"."ZBD3T" > 0 THEN "BSEG"."ZBD3T" 
    WHEN
    "BSEG"."ZBD2T" > 0 AND "BSEG"."ZBD3T" = 0.0 THEN "BSEG"."ZBD2T" 
    WHEN
    "BSEG"."ZBD1T" > 0 AND "BSEG"."ZBD3T" = 0.0 AND "BSEG"."ZBD2T" = 0.0
    THEN "BSEG"."ZBD1T" 
   ELSE 0.0 
 END
)
