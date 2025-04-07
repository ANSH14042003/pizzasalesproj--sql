-- Identify the highest-priced pizza

-- Write your SQL query below
SELECT pizza_id, price
FROM pizzas
ORDER BY price DESC
LIMIT 1;
