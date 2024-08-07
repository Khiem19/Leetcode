# Write your MySQL query statement below
SELECT P.product_id , P.product_name 
FROM Product P
LEFT JOIN Sales S
ON P.product_id = S.product_id
GROUP BY P.product_id
HAVING MIN(S.sale_date) >= CAST('2019-01-01' AS DATE) AND
       MAX(S.sale_date) <= CAST('2019-03-31' AS DATE)
