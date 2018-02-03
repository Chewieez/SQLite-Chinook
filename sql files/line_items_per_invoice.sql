SELECT InvoiceId, Count(InvoiceId) as "Line Items per Invoice"
FROM InvoiceLine
GROUP BY InvoiceId;
