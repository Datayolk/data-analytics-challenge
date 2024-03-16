SELECT customer_id, review_text
FROM Reviews
WHERE (review_text LIKE '%excellent%' OR review_text LIKE '%impressive%' OR review_text LIKE '%recommend%')
AND (rating >=4);