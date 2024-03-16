SELECT c.name, COUNT(r.review_id) AS review_count
FROM Customers c
JOIN Reviews r ON c.customer_id = r.customer_id
GROUP BY c.customer_id
HAVING COUNT(r.review_id) > 1;