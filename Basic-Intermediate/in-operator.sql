USE atlas;

SELECT 
    *
FROM
    countries;
    
-- show countries id and name where country code is in a specific range 

SELECT 
    countries_id, countries_name
FROM
    countries
WHERE
    countries_iso_code_3 IN ('BEL' , 'GRC', 'IRN', 'JPN', 'NLD', 'USA')