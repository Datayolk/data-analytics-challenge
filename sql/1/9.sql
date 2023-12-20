SELECT
    c.customer_id,
    c.customer_name,
    SUM(p.amount) AS total_order_amount
FROM
    customers c
JOIN
    orders o ON c.customer_id = o.customer_id
JOIN
    payments p ON o.order_id = p.order_id
GROUP BY
    c.customer_id, c.customer_name
ORDER BY
    total_order_amount DESC
LIMIT 5;