SELECT product_id, order_date, SUM(quantity * unit_price) OVER (PARTITION BY product_id ORDER BY order_date) AS running_total
FROM order_details;