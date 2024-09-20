USE sales;

SELECT 
    *
FROM
    sales_order_grid;
    
-- How many orders are in processing - COUNT()

SELECT 
    COUNT(entity_id) AS order_processing_count
FROM
    sales_order_grid
WHERE `status` = 'processing'; 


USE sales;

SELECT 
    *
FROM
    sales_order_grid;
    
-- How many customers have orders less than 100 AED - COUNT()

SELECT 
    COUNT(customer_id)
FROM
    sales_order_grid
WHERE total_paid < 100;