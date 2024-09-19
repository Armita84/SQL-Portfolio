USE atlas;

select * from admin;

-- set user role to Super Admin if admin_profile code is 0 or 1

SELECT 
    admin_id, admin_name, admin_email, admin_profile, IF(admin_profile <2 , 'Super Admin', 'Admin') As admin_role
FROM
    admin;