USE atlas;

 -- Get products information 
SELECT 
    *
FROM
    products_description;
    
-- Get customers information

SELECT 
    customers_id, 
    customers_gender,
	customers_firstname,
	customers_lastname,
	customers_dob,
	customers_email_address,
    customers_default_address_id,
	customers_telephone,
    customers_newsletter
FROM
    customers; 