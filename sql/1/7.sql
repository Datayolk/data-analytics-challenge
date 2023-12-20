SELECT payment_method, amount
FROM Payments
GROUP BY payment_method
HAVING SUM(amount) < 200;