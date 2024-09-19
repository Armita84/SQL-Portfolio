USE atlas;

SELECT 
    *
FROM
    manufacturers;
    
    SELECT 
    *
FROM
    products;
    
    
-- RIGHT JOIN for tables 'products' and 'manufacturers'

-- Show 'products_id', 'products_status' from table 'products'  
-- and 'manufacturers_name' from table 'manufacturers'
--
SELECT 
    p.products_id, p.products_status, p.manufacturers_id, m.manufacturers_name
FROM
    products p
        JOIN
    manufacturers m ON p.manufacturers_id = m.manufacturers_id;
    
    
-- sort manufacturers name based on the number of products assigned  
-- GET most featured manufacturers

SELECT 
    COUNT(p.products_id) AS number_of_products, m.manufacturers_name
FROM
    products p
        JOIN
    manufacturers m ON p.manufacturers_id = m.manufacturers_id
    GROUP BY m.manufacturers_name
    ORDER BY number_of_products DESC ;