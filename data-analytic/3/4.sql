SELECT
customer_id,
MAX(total_amount_paid) AS max_paid_amount,
COUNT(*) AS booking_count
FROM (
SELECT
customer_id,
SUM(amount_paid) AS total_amount_paid
FROM reservations
GROUP BY customer_id
) AS customer_payments
GROUP BY customer_id
ORDER BY max_paid_amount DESC
LIMIT 1;