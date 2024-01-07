SELECT
item_id,
item_name,
price,
invoice_id,
CASE
WHEN item_id IN (3, 4, 5, 8, 9) THEN 'Dairy Product'
ELSE 'Non-Dairy Product'
END AS product_category
FROM
Items;