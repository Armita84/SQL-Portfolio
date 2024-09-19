USE atlas;

-- Handling missing values in columns
UPDATE customers 
SET customers_nick = 'Not Provided' WHERE customers_nick = ' ';

COMMIT;

-- Handling missing values in columns
UPDATE customers 
SET customers_fax = 'Not Provided' WHERE customers_fax = ' ' OR customers_fax = 'N/L';

SELECT * FROM customers;
