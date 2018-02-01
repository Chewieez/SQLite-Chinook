/* Provide a query that shows total sales made by each sales agent. */

SELECT e.FirstName || " " || e.LastName as "Sales Agent", printf('%.2f', SUM(i.Total)) as "Total Sales"
FROM Invoice i
INNER JOIN Customer c ON i.CustomerId = c.CustomerId
INNER JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY e.employeeId