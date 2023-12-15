SELECT customer_id, SUM(quantity * unit_price) AS total_amount
FROM orders
GROUP BY customer_id
ORDER BY total_amount DESC
LIMIT 5;