--Write an SQL query to find for each month and country, the number of transactions and their total amount, 
--the number of approved transactions and their total amount

SELECT
    DATE_FORMAT(trans_date, '%Y-%m')AS month,
    country,
    COUNT(trans_date) AS trans_count,
    COUNT(CASE WHEN state =  "approved" THEN 1 ELSE NULL END) AS approved_count,
    SUM(amount)AS trans_total_amount,
    SUM(CASE WHEN state = "approved" THEN amount else 0 END) AS approved_total_amount
FROM Transactions s
GROUP BY month, country;
