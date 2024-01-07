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
    strftime('%w', inv.order_date) AS day_of_week,
    pc.product_category,
    SUM(i.price * inv.quantity) AS total_sold
FROM
    Invoices inv
JOIN
    ProductCategories pc ON inv.item_id = pc.item_id
JOIN
    Items i ON inv.item_id = i.item_id
GROUP BY
    day_of_week, pc.product_category
ORDER BY
    day_of_week, pc.product_category;