Invoice Not Posted by Value in USD :

SUM(
  CASE 
    WHEN "o_custom_OpenInvoiceDeepdiveManualFile"."STATUS" = 'Invoice Not Posted' 
    THEN "o_celonis_VendorAccountCreditItem"."Amount" 
  END
)
