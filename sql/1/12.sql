SELECT
    SUM(od.quantity * p.unit_price) AS total_revenue
FROM
    order_details od
JOIN
    products p ON od.product_id = p.product_id
JOIN
    orders o ON od.order_id = o.order_id;