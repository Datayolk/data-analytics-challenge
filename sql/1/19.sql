WITH CustomerPayments AS (
  SELECT
    c.customer_id,
    c.customer_name,
    COALESCE(SUM(p.amount), 0) AS total_payments
  FROM
    Customers c
    LEFT JOIN Orders o ON c.customer_id = o.customer_id
    LEFT JOIN Payments p ON o.order_id = p.order_id
  GROUP BY
    c.customer_id, c.customer_name
),
RankedCustomers AS (
  SELECT
    customer_id,
    customer_name,
    total_payments,
    RANK() OVER (ORDER BY total_payments DESC) AS payment_rank
  FROM
    CustomerPayments
)
SELECT
  customer_id,
  customer_name,
  total_payments
FROM
  RankedCustomers
WHERE
  payment_rank = 1;