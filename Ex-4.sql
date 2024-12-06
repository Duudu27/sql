-- 4. View үүсгэх

-- Захиалгын дэлгэрэнгүйг харуулах order_summary гэсэн view үүсгэ.
CREATE VIEW order_summary AS
SELECT u.name AS user_name, o.order_id, o.order_date, od.product_id, p.name AS product_name, od.quantity, (od.quantity * p.price) AS total_price
FROM orders o
JOIN users u ON o.user_id = u.user_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id;
