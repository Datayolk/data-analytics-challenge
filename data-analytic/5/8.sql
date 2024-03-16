SELECT c.name, c.contact_info,
       AVG(LENGTH(r.review_text)) AS avg_review_length
FROM Customers c
JOIN Reviews r ON c.customer_id = r.customer_id
GROUP BY c.customer_id
ORDER BY avg_review_length DESC;