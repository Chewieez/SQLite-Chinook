SELECT FirstName || " " || LastName as "Name", CustomerId, Country
FROM Customer
WHERE Country != "USA";