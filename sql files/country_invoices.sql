SELECT count(InvoiceId) as "Invoice Count", BillingCountry
FROM Invoice
GROUP BY BillingCountry;
