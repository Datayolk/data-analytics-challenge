WITH ProductRevenue AS (
SELECT p.product_id, p.product_name, COALESCE(SUM(od.quantity * p.unit_price), 0) AS total_revenue
FROM Products p
LEFT JOIN Order_Details od ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name
)
SELECT product_id, product_name, total_revenue,
RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
FROM ProductRevenue;