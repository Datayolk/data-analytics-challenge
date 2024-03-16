SELECT strftime('%w', date) AS day_of_week, AVG(r.rating) AS avg_rating
FROM Reviews r
WHERE r.product_id = 1
GROUP BY day_of_week
ORDER BY day_of_week;