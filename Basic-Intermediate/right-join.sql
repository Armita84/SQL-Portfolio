USE sales;

SELECT 
    *
FROM
    sales_order_grid;
    
SELECT 
    *
FROM
    sales_order_item;

-- show oder is with product names in each order    
SELECT 
    o.entity_id, i.product_id, i.`name`, i.sku, i.weight
FROM
    sales_order_grid o
        RIGHT JOIN
    sales_order_item i ON o.entity_id = i.order_id;
    