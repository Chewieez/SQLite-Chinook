/* Provide a query that shows all Invoices but includes the # of invoice line items. */

SELECT i.*, Count(il.InvoiceId) as "Line Item Count"
FROM Invoice i
LEFT JOIN InvoiceLine il  ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId;