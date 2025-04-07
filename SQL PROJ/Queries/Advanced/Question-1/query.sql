-- Calculate the percentage contribution of each pizza type to total revenue

-- Write your SQL query below
WITH revenue_by_pizza AS (
  SELECT pt.name, SUM(od.quantity * p.price) AS revenue
  FROM order_details od
  JOIN pizzas p ON od.pizza_id = p.pizza_id
  JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
  GROUP BY pt.name
),
total_revenue AS (
  SELECT SUM(revenue) AS total FROM revenue_by_pizza
)
SELECT r.name, ROUND(r.revenue / t.total * 100, 2) AS percent_contribution
FROM revenue_by_pizza r, total_revenue t
ORDER BY percent_contribution DESC;
