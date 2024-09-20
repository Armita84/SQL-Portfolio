USE sales;

-- list different products with the same weight - SELF JOIN

SELECT 
    i1.product_id AS product_id1,
    i2.product_id AS product_id2,
    i1.weight
FROM
     sales_order_item i1, sales_order_item i2
WHERE
    i1.product_id <> i2.product_id
        AND i1.weight = i2.weight
ORDER BY i1.weight;