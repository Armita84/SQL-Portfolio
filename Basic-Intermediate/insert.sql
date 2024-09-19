USE atlas;

-- Insert new admin to admin table
COMMIT;

INSERT INTO `admin`
(
`admin_name`, `admin_email`, `admin_profile`, `admin_pass`)
VALUES
(
'Data Entry', 'data@atlas.com','4','pass12345');


SELECT 
    *
FROM
    `admin`;