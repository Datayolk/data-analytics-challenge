SELECT product_id, MAX(order_date) AS latest_order
FROM order_details
GROUP BY product_id;