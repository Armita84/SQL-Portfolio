USE atlas;

-- Get 30 most viewed products icluding product id and product name
SELECT 
    products_id, products_name, products_viewed
FROM
    products_description
ORDER BY products_viewed DESC LIMIT 30;