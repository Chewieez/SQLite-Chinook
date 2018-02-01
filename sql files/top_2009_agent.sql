/* Which sales agent made the most in sales in 2009? */
/* Hint: Use the MAX function on a subquery. */

/* This selects the Sales Agent with the most total sales(Invoices) in 2009 using a subquery of all Sales Agents and their individual total sales(Invoices) in 2009 */
SELECT "Sales Agent", MAX("Total Sales")
FROM (
/* This selects the Sales Agents and their respective Total Sales(Invoices) for the year 2009 */
SELECT e.FirstName || " " || e.LastName as "Sales Agent", SUM(i.Total) as "Total Sales"
FROM Invoice i
INNER JOIN Customer c ON i.CustomerId = c.CustomerId
INNER JOIN Employee e ON c.SupportRepId = e.EmployeeId
WHERE i.InvoiceDate BETWEEN "2009-01-01" and "2009-12-31" 
GROUP BY e.employeeId
) 


