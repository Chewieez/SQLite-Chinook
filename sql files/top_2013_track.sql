/* Provide a query that shows the most purchased track of 2013. */

SELECT "Track Name" as "Most Popular Song of 2013", MAX("Track Count") as "Purchase Count"
FROM (
SELECT t.Name as "Track Name", COUNT(il.TrackId) as "Track Count"
FROM InvoiceLine il
INNER JOIN Track t ON t.TrackId = il.TrackId
INNER JOIN Invoice i ON il.InvoiceId = i.InvoiceId
WHERE i.InvoiceDate BETWEEN "2013-01-01" AND "2013-12-31"
Group  BY t.Name
ORDER BY "Track Count" DESC
)