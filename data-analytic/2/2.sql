SELECT
    c.customer_id,
    c.email,
    SUM(i.price * inv.quantity) AS cumulative_sales
FROM
    Customers c
JOIN
    Invoices inv ON c.customer_id = inv.customer_id
JOIN
    Items i ON inv.item_id = i.item_id
GROUP BY
    c.customer_id, c.email
ORDER BY
  cumulative_sales DESC;