SELECT customer_name, MAX(amount) AS highest_order_amount
FROM Customers
JOIN Orders ON Customers.customer_id = Orders.customer_id
JOIN Payments ON Orders.order_id = Payments.order_id;