SELECT name, contact_info
FROM Customers
WHERE customer_id IN (
    SELECT DISTINCT customer_id
    FROM Reviews
    WHERE rating > 4
);