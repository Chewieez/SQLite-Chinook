/* Provide a query that includes the purchased track name AND artist name with each invoice line item. */

SELECT t.Name as "Track Name", a.Name as "Artist Name", il.*
FROM InvoiceLine il
INNER JOIN Track t
ON il.TrackId = t.TrackId
INNER JOIN Album al
ON t.AlbumId = al.AlbumId
INNER JOIN Artist a
ON al.ArtistId = a.ArtistId;
