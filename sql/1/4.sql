SELECT
    od.product_id,
    o.order_date,
    SUM(od.quantity * p.unit_price) OVER (PARTITION BY od.product_id ORDER BY o.order_date) AS running_total
FROM
    order_details od
JOIN
    orders o ON od.order_id = o.order_id
JOIN
    products p ON od.product_id = p.product_id;