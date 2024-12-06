-- 3. Өгөгдөл шалгах (SELECT Queries)

-- Бүх бүтээгдэхүүний нэр болон үнэ:
SELECT name, price FROM products;

-- Захиалгад орсон бараа бүтээгдэхүүнүүд болон нийт үнэ:
SELECT p.name AS product_name, od.quantity, (od.quantity * p.price) AS total_price
FROM order_details od
JOIN products p ON od.product_id = p.product_id
WHERE od.order_id = 1;


-- Хувь хэрэглэгчдийн нийт захиалгын тоо болон нийт зарцуулсан мөнгө:
SELECT u.name, COUNT(o.order_id) AS total_orders, SUM(o.total_price) AS total_spent
FROM users u
JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id;





