/* Provide a query that shows the total sales per country. */

SELECT c.Country as Country, Count(i.InvoiceId) as "Total Sales"
FROM Customer c
INNER JOIN Invoice i ON c.CustomerId = i.CustomerId
Group BY Country