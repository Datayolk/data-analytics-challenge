SELECT
    p.payment_method,
    (SUM(p.amount) / (SELECT SUM(amount) FROM payments)) * 100 AS percentage_of_total_sales
FROM
    payments p
GROUP BY
    p.payment_method;