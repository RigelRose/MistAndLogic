Invoices not Posted by Volume :

COUNT(
  CASE 
    WHEN "o_custom_OpenInvoiceDeepdiveManualFile"."STATUS" = 'Invoice Not Posted' 
    THEN "o_celonis_VendorAccountCreditItem"."ID" 
  END
)
