SELECT category, SUM(quantity * unit_price) / (SELECT SUM(quantity * unit_price) FROM order_details) * 100 AS percentage_of_total_sales
FROM products
JOIN order_details ON products.product_id = order_details.product_id
GROUP BY category;