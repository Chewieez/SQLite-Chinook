SELECT strftime('%Y', InvoiceDate) as Year, SUM(Total)
FROM Invoice
WHERE Invoice.InvoiceDate BETWEEN "2009-01-01" AND "2009-12-31" OR
Invoice.InvoiceDate BETWEEN "2011-01-01" AND "2011-12-31"
GROUP BY Year
