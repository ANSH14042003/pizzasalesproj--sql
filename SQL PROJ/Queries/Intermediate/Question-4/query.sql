-- Group the orders by date and calculate the average number of pizzas ordered per day

-- Write your SQL query below
SELECT date, ROUND(AVG(daily_quantity), 2) AS avg_pizzas
FROM (
  SELECT o.date, SUM(od.quantity) AS daily_quantity
  FROM orders o
  JOIN order_details od ON o.order_id = od.order_id
  GROUP BY o.date
)
GROUP BY date;
