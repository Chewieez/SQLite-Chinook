/*   Provide a query that shows the most purchased Media Type.  */

SELECT m.Name as "Artist Name", COUNT(il.Quantity) as "Items Sold"
FROM InvoiceLine il, Track t, MediaType m
WHERE t.TrackId = il.TrackId AND t.MediaTypeId = m.MediaTypeId
Group BY m.Name
ORDER BY "Items Sold" DESC
LIMIT 3