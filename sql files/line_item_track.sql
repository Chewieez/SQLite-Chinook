SELECT t.Name as "Track Name", il.*
FROM InvoiceLine il
INNER JOIN Track t
ON il.TrackId = t.TrackId;
