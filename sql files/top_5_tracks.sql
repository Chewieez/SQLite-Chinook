/* Provide a query that shows the top 5 most purchased songs. */

SELECT t.Name as "Track Name", COUNT(il.TrackId) as "Track Count"
FROM InvoiceLine il
INNER JOIN Track t ON t.TrackId = il.TrackId
Group  BY t.Name
ORDER BY "Track Count" DESC
LIMIT 5;
