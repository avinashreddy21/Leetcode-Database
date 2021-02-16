# Solution 1 using "LEFT JOIN"
SELECT
c.Name as "Customers"
FROM Customers c LEFT JOIN Orders o
ON c.Id = o.CustomerId
WHERE o.CustomerId IS NULL
;


# Solution 2 using "NOT IN"
SELECT
Name as "Customers"
FROM Customers
WHERE Customers.Id NOT IN
(SELECT CustomerId FROM Orders)
;