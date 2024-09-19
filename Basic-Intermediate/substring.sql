
USE atlas;

SELECT 
    *
FROM
    customers;
    
 -- extract customers year of birth 
 
SELECT 
    customers_id, customers_firstname, customers_lastname, SUBSTRING(customers_dob, 1, 4) AS birth_year
FROM
    customers
ORDER By birth_year;

-- ------------------------------------- --
--          another example				 --
-- ------------------------------------- --

SELECT * FROM products;

-- Change the date format to 'YYYMM' in prodcuts table

SELECT 
    products_id, products_date_added, products_last_modified, 
   REPLACE(SUBSTRING(products_last_modified,1,7), '-','') AS last_modified_new_format, 
   REPLACE(SUBSTRING(products_date_added,1,7),'-','') AS date_added_new_format
FROM
    products;