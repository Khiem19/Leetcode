# Write your MySQL query statement below
SELECT C.name Customers 
FROM Customers C
WHERE C.id NOT IN (SELECT customerId FROM Orders)