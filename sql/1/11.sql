SELECT payment_method, SUM(amount) AS total_amount
FROM Payments
GROUP BY payment_method
ORDER BY total_amount DESC
LIMIT 1;