SELECT
  c.customer_id,
  c.customer_name,
  SUM(p.amount) AS total_payments
FROM
  Customers c
  LEFT JOIN Orders o ON c.customer_id = o.customer_id
  LEFT JOIN Payments p ON o.order_id = p.order_id
GROUP BY
  c.customer_id, c.customer_name;