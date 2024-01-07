SELECT
    strftime('%w', inv.order_date) AS day_of_week,
    SUM(i.price * inv.quantity) AS total_sold
FROM
    Invoices inv
JOIN
    Items i ON inv.item_id = i.item_id
GROUP BY
    day_of_week
ORDER BY
    day_of_week