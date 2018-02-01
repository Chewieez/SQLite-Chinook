/* Which country's customers spent the most? */

SELECT Country as "Top Country for Spending", MAX("Amount Spent") as "Amount Spent"
FROM (
SELECT c.Country as Country, SUM(i.Total) as "Amount Spent"
FROM Customer c
INNER JOIN Invoice i ON c.CustomerId = i.CustomerId
Group BY Country
)