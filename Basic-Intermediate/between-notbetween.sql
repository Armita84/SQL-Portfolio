USE atlas;

SELECT 
    *
FROM
    products;


-- show broducts added in dates between 2012 and 2016    
SELECT 
    products_id,
    products_image,
    manufacturers_id,
    products_date_added
FROM
    products
WHERE
    products_date_added BETWEEN '2012-01-01' AND '2016-12-30' 
    ORDER BY products_date_added DESC;


-- show broducts belongs to manufacturers id below 37 and above 46  
SELECT 
    products_id,
    products_image,
    manufacturers_id,
    products_date_added
FROM
    products
WHERE
    manufacturers_id NOT BETWEEN 37 AND 46 
    ORDER BY manufacturers_id DESC;     