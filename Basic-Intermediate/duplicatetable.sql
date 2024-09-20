USE sales;

-- copy the first half records from table 'sales_order_item'  into 'sales_order_item_half1' table
INSERT INTO sales_order_item_half1 
	SELECT * FROM sales_order_item WHERE item_id < 140190;
    
SELECT 
    *
FROM
    sales_order_item_half1;     
 
 
 -- copy the second half records from table 'sales_order_item'  into 'sales_order_item_half2' table
INSERT INTO sales_order_item_half2 
	SELECT * FROM sales_order_item WHERE item_id >= 140190;
    
SELECT 
    *
FROM
    sales_order_item_half2;     