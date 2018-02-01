/* Provide a query that shows the count of customers assigned to each sales agent.  */

SELECT e.FirstName || " " || e.LastName as "Sales Agent", Count(c.CustomerId) as "Total Customers"
FROM Employee e
INNER JOIN Customer c ON e.EmployeeId = c.SupportRepId
GROUP BY e.employeeId

