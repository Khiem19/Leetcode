# Write your MySQL query statement below
SELECT U.name NAME,  SUM(T.amount) BALANCE
FROM Users U
JOIN Transactions T
ON U.account = T.account
GROUP BY U.name, U.account
HAVING balance > 10000