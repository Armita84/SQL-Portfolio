USE sales;

SELECT 
    *
FROM
    sales_order_grid;
    
-- find the order whith highest price - MAX()

SELECT 
    MAX(total_paid) 
FROM
    sales_order_grid; 
    
-- find the order whith lowest price - MIN()  
  
    SELECT 
     MIN(total_paid)
FROM
    sales_order_grid; 