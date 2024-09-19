USE atlas;

SELECT 
    *
FROM
    products_description ORDER BY products_viewed;
    
-- Remove products with NO VIEWS
COMMIT;

DELETE FROM products_description 
WHERE
    products_viewed < 1; 
    
 ROLLBACK; 

    