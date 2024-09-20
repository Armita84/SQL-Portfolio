USE sales;

SELECT 
    *
FROM
    sales_order_grid;
    
-- total paid for all orders  SUM() and ROUND()

SELECT 
    ROUND(SUM(total_paid),2) As total_Sales
FROM
    sales_order_grid; 