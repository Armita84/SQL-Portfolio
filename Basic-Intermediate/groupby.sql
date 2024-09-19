USE atlas;

-- Sort Categories with Most Products
SELECT COUNT(products_id) AS product_count,  categories_id
FROM
    products_to_categories
GROUP BY categories_id
ORDER BY product_count DESC;
