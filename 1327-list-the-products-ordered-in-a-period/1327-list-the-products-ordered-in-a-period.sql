# Write your MySQL query statement below
SELECT P.product_name, SUM(O.unit) unit
FROM Products P
JOIN Orders O
ON P.product_id = O.product_id
WHERE O.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY P.product_name
HAVING unit >= 100
