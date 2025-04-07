-- Determine the distribution of orders by hour of the day

-- Write your SQL query below
SELECT strftime('%H', time) AS hour, COUNT(*) AS order_count
FROM orders
GROUP BY hour
ORDER BY hour;
