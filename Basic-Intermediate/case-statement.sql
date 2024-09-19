USE atlas;

    COMMIT;
    -- add new column 'newsletter_subscription_status' based on 'customers_newletter' codes
    SELECT customers_id, 
		customers_gender, 
		customers_firstname, 
		customers_lastname, 
		customers_email_address, 
		customers_newsletter ,
        
        CASE customers_newsletter
			WHEN  0 THEN 'not subscribed'
			WHEN  1 THEN 'subscribed'
			ELSE 'not provided'
		END AS newsletter_subscription_status
    FROM customers;
    
    ROLLBACK;
    
    
     COMMIT;
     -- add new column 'customers_sex' based on 'customers_gender' codes
    SELECT customers_id, 
		customers_gender, 
		customers_firstname, 
		customers_lastname, 
		customers_email_address, 
		customers_newsletter ,
        
        CASE customers_gender
			WHEN  'm' THEN 'Male'
			WHEN  'f' THEN 'Female'
			ELSE 'Other'
		END AS customers_sex
    FROM customers;
    
-- select table    
 SELECT 
    *
FROM
    customers;
    
    
SELECT 
    *
FROM
    customers;
    
 -- extract customers year of birth and assign age range base of date of birth
 
SELECT 
    customers_id, customers_firstname, customers_lastname, SUBSTRING(customers_dob, 1, 4),
    
    CASE
    WHEN SUBSTRING(customers_dob, 1, 4) < '1980' THEN 'OLD'
    WHEN SUBSTRING(customers_dob, 1, 4) >= '1980' AND SUBSTRING(customers_dob, 1, 4) < '1990'  THEN 'MID-AGE'
    ELSE 'YOUNGE'
    END AS age_range
FROM
    customers
ORDER By SUBSTRING(customers_dob, 1, 4);    

   