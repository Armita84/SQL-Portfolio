USE atlas;

SELECT 
    *
FROM
    manufacturers;
    
-- replace null in columns 'last_modified' with 'date_added' values. If 'date_added' values is null too, set 'Unknown'
SELECT 
    manufacturers_id,
    manufacturers_name,
    IFNULL(manufacturers_image, 'Image Not Provided'),
    date_added,
    COALESCE(last_modified, date_added,'Unknown')
FROM
    manufacturers;