
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