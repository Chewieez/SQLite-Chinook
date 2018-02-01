SELECT strftime('%Y', InvoiceDate) as valYear, SUM(Total)
FROM Invoice
WHERE Invoice.InvoiceDate BETWEEN "2009-01-01" AND "2011-12-31"
GROUP BY valYear
