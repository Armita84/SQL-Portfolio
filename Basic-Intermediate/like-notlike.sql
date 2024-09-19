USE atlas;

SELECT 
    *
FROM
    countries;
    
-- show countries where country names starts with 'G'

SELECT 
    countries_id, countries_name
FROM
    countries
WHERE
    countries_name LIKE ('G%');
    
    -- show countries where country names doen not have 'o' letter

SELECT 
    countries_id, countries_name
FROM
    countries
WHERE
    countries_name NOT LIKE ('%o%');
    
     -- show countries where country names ends with "ia"

SELECT 
    countries_id, countries_name
FROM
    countries
WHERE
    countries_name LIKE ('%ai');