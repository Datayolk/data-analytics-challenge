SELECT city, AVG(order_count) AS avg_order_count
FROM Customers
GROUP BY city;