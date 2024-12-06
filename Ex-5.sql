-- 5. Update болон Delete

-- Products хүснэгтийн stock_quantity баганын утгыг өөрчил.
UPDATE products 
SET stock_quantity = stock_quantity - 1
WHERE product_id = 2;  

-- Захиалгын барааг устга.
DELETE FROM order_details 
WHERE order_id = 1 AND product_id = 2; 
