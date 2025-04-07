-- Join relevant tables to find the category-wise distribution of pizzas

-- Write your SQL query below
SELECT pt.category, COUNT(DISTINCT p.pizza_id) AS pizza_count
FROM pizzas p
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category;
