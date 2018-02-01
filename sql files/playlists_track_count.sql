SELECT Count(pt.TrackId) as "Track Count", p.Name
FROM Playlist p
INNER JOIN PlaylistTrack pt
ON p.PlaylistId = pt.PlaylistId
GROUP BY p.Name



/* Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table. */