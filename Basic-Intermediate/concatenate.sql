USE atlas;

SELECT 
    *
FROM
    customers;
 -- concatenate customers first namr and last name to create customer fullname
 
SELECT 
    customers_id,
    CONCAT(customers_firstname, ' ', customers_lastname) AS customers_fullname, customers_dob
FROM
    customers;