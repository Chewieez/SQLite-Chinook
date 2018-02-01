/* Provide a query that shows the top 3 best selling artists */

SELECT a.Name as "Artist Name", COUNT(il.Quantity) as "Tracks Sold"
FROM InvoiceLine il, Track t, Album al, Artist a
WHERE t.TrackId = il.TrackId AND t.AlbumId = al.AlbumId AND al.ArtistId = a.ArtistId
Group BY a.Name
ORDER BY "Tracks Sold" DESC
LIMIT 3



/*  Alternate method using explicit Inner Joins
SELECT a.Name as "Artist Name", COUNT(il.Quantity) as "Tracks Sold"
FROM InvoiceLine il
INNER JOIN Track t ON t.TrackId = il.TrackId
INNER JOIN Album al ON t.AlbumId = al.AlbumId
INNER JOIN Artist a ON al.ArtistId = a.ArtistId
Group  BY a.Name
ORDER BY "Tracks Sold" DESC
LIMIT 3
*/