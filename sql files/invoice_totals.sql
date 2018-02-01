SELECT i.Total, c.FirstName || " " || c.LastName as "Customer Name", c.Country, e.FirstName || " " || e.LastName as "Employee Name"
FROM Customer c
LEFT JOIN Invoice i
ON i.CustomerId = c.CustomerId
LEFT JOIN Employee e
ON c.SupportRepId = e.EmployeeId;