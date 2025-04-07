-- Identify the most common pizza size ordered

-- Write your SQL query below
SELECT p.size, COUNT(*) AS count
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
GROUP BY p.size
ORDER BY count DESC
LIMIT 1;
