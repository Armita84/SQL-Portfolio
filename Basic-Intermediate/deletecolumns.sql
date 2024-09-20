USE sales;

SELECT 
    *
FROM
    sales_order_grid;
    
COMMIT;   
alter table sales_order_grid drop shipping_name;   

alter table sales_order_grid drop billing_name; 
alter table sales_order_grid drop billing_address; 
alter table sales_order_grid drop shipping_address;
alter table sales_order_grid drop customer_email;
alter table sales_order_grid drop customer_name;
alter table sales_order_grid drop total_refunded;
alter table sales_order_grid drop signifyd_guarantee_status;
alter table sales_order_grid drop customer_shipping_date;

