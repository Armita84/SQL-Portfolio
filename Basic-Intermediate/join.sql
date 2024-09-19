USE atlas;

-- RIGHT JOIN for tables 'products_to_categories' and 'categories_description'

-- Show 'products_id', 'categoried_id' from table 'products_to_categories'  
-- and 'categories_name' from table 'categories_description'
--
SELECT 
    p.products_id, p.categories_id, c.categories_name
FROM
    products_to_categories p
        JOIN
    categories_description c ON p.categories_id = c.categories_id;
    
    
-- sort categories name based on the number of products assigned  
-- GET most featured categories  

SELECT 
    COUNT(p.products_id) AS products_count, c.categories_name
FROM
    products_to_categories p
        JOIN
    categories_description c ON p.categories_id = c.categories_id
    
GROUP BY c.categories_name
ORDER BY products_count DESC;