USE sales;

SELECT 
    *
FROM
    sales_order_grid;
    
-- count customers groupby shipping method. (Don't count customers with NO SHIPPING INFORMATION )

SELECT 
    COUNT(customer_id) As number_of_customers, shipping_information
FROM
    sales_order_grid
GROUP BY shipping_information
HAVING COUNT(customer_id) >1 ;