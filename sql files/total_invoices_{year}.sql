/*  How many Invoices were there in 2009 and 2011? */

SELECT count(InvoiceId) as "Total Invoices for 2009 & 2011"
FROM Invoice
WHERE invoice.InvoiceDate BETWEEN "2009-01-01" AND "2009-12-31" OR
invoice.InvoiceDate BETWEEN "2011-01-01" AND "2011-12-31"



/* Alternate Solution to display the total invoice per year */
/*
SELECT strftime("%Y", InvoiceDate) as Year, count(InvoiceId) as "Total Invoices"
FROM Invoice
WHERE invoice.InvoiceDate BETWEEN "2009-01-01" AND "2009-12-31" OR
invoice.InvoiceDate BETWEEN "2011-01-01" AND "2011-12-31"
*/
