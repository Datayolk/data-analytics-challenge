WITH ProductCategories AS (
    SELECT
        i.item_id,
        i.item_name,
        CASE
            WHEN i.item_id IN (3, 4, 5, 8, 9) THEN 'Dairy Product'
            ELSE 'Non-Dairy Product'
        END AS product_category
    FROM
        Items i
)
SELECT
    pc.product_category,
    SUM(inv.quantity) AS total_quantity_sold,
    (SUM(inv.quantity) * 100 / (SELECT SUM(quantity) FROM Invoices)) AS percentage_sold
FROM
    ProductCategories pc
JOIN
    Invoices inv ON pc.item_id = inv.item_id
GROUP BY
    pc.product_category;