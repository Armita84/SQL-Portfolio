USE atlas;

SELECT 
    *
FROM
    manufacturers;
-- replace null in columns 'manufacturers_image' and 'last_modified' with default values
SELECT 
    manufacturers_id,
    manufacturers_name,
    IFNULL(manufacturers_image, 'Image Not Provided'),
    date_added,
    IFNULL(last_modified,'Unknown')
FROM
    manufacturers;