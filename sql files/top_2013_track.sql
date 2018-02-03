/* Provide a query that shows the most purchased track of 2013. */

SELECT TopTracks.TrackName as "Most Popular Song of 2013", MAX(TopTracks.TrackCount) as PurchaseCount
FROM (
SELECT t.Name as TrackName, COUNT(il.TrackId) as TrackCount
FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
WHERE i.InvoiceDate BETWEEN "2013-01-01" AND "2013-12-31"
Group  BY t.Name
ORDER BY TrackCount DESC
) as TopTracks


/* This will return all the ties in a query of top tracks 
	WITH allows us to use a subquery as many times as we need.
*/

wIth TopTracks as (
	select t.Name,
	count(t.Name) PurchaseCount
	from Track t
	join InvoiceLine l on l.TrackId = t.TrackId
	join Invoice i on l.InvoiceId = i.InvoiceId
	where strftime('%Y', i.InvoiceDate) = "2013"
	group by t.Name
	order by PurchaseCount desc
)
select Name, PurchaseCount from TopTracks
where (
	select Max(purchaseCount) from TopTracks) = PurchaseCount
;