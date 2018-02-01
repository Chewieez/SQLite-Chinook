SELECT e.FirstName || " " || e.LastName, i.*
FROM Employee e
INNER JOIN Customer c
ON c.SupportRepId = e.EmployeeId
INNER JOIN Invoice i
ON c.CustomerId = i.CustomerId
ORDER BY e.LastName;
