USE atlas;

SELECT 
    *
FROM
    product_types;
    
    SELECT 
    *
FROM
    products;
    
    
-- RIGHT JOIN for tables 'products' and 'product_types'

-- Show 'products_id', 'products_type' from table 'products'  
-- Show 'type_name' from table 'product_types' IF type_id value is not 1
-- USING JOIN ... WHERE statement

-- The result should return no record

SELECT 
    p.products_id, p.products_type, t.type_name
FROM
    products p
        JOIN
    product_types t ON p.products_type = t.type_id
WHERE t.type_id <> 1;