SELECT customer_id, MAX(order_date) AS latest_order
FROM orders
GROUP BY customer_id;