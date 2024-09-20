USE sales;

SELECT 
    *
FROM
    sales_order_grid;
    
-- Avarage total paid - AVG()

SELECT 
    entity_id, `status`, ROUND(base_grand_total, 2)
FROM
    sales_order_grid; 