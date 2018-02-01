/* Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre. */


select t.Name as 'Track Name', al.Title as 'Album Title', g.Name as 'Genre Name', m.Name as 'Media Name'
from Track t
LEFT JOIN Genre g ON t.GenreId = g.GenreId
LEFT JOIN MediaType m ON t.MediaTypeId = m.MediaTypeId
LEFT JOIN Album al  ON  t.AlbumId = al.AlbumId
