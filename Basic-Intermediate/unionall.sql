USE sales;

SELECT 
    item_id, order_id, product_id, name, sku, weight
FROM
    sales_order_item_half1 
UNION ALL SELECT 
    item_id, order_id, product_id, name, sku, weight
FROM
    sales_order_item_half2
ORDER BY item_id DESC;