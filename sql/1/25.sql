SELECT DISTINCT month,
SUM(revenue) OVER (ORDER BY month) / LAG(SUM(revenue)) OVER (ORDER BY month) * 100 AS growth_percentage
FROM monthly_revenue;