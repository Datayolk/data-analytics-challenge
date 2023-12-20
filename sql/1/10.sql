SELECT product_name, SUM(quantity) AS total_quantity_sold
FROM Products
JOIN Order_Details ON Products.product_id = Order_Details.product_id
GROUP BY product_name;