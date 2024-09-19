USE atlas;

SELECT 
    *
FROM
    products;

-- get duration (in months) between products date that is added to the store, untill their last modification date

-- I want to use PERIOD_DIFF function so I should change the date format to 'YYYMM'

SELECT 
    products_id, products_date_added, products_last_modified, 
   REPLACE(SUBSTRING(products_last_modified,1,7), '-','') AS last_modified_new_format, 
   REPLACE(SUBSTRING(products_date_added,1,7),'-','')AS date_added_new_format
FROM
    products;

-- calculate durations in month between peoduct added date and the last modification date    
SELECT 
    products_id, products_date_added, products_last_modified, 
   PERIOD_DIFF(REPLACE(SUBSTRING(products_last_modified,1,7), '-',''), REPLACE(SUBSTRING(products_date_added,1,7),'-','')) AS duration_in_month
FROM
    products;    