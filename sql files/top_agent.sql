/* Which sales agent made the most in sales over all? */

/* This selects the single Sales Agent with the most amount of sale (invoices)*/
SELECT "Sales Agent" as "Top Sales Agent", MAX("Total Sales") as "Total Sales"
FROM (
/* This selects the Sales Agents and their respective Total Sales (Invoices) */
SELECT e.FirstName || " " || e.LastName as "Sales Agent", Count(i.InvoiceId) as "Total Sales"
FROM Invoice i
INNER JOIN Customer c ON i.CustomerId = c.CustomerId
INNER JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY e.employeeId
) 