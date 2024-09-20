USE sales;

SELECT 
    *
FROM
    sales_order_grid;
    
-- Avarage total paid - AVG()

SELECT 
    ROUND(AVG(total_paid),2) As total_Sales, IF(ROUND(AVG(total_paid),2) < 250, 'Target Not Reached!', 'Target Has Reached') AS sales_status
FROM
    sales_order_grid; 