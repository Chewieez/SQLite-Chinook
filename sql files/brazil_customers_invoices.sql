SELECT c.FirstName || " " || c.LastName as "Name", i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM Customer c
LEFT JOIN Invoice i
WHERE c.CustomerId = i.CustomerId
AND c.Country = "Brazil";