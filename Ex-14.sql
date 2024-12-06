-- 14. Гарах үр дүнг шалгах (Testing Output)

-- Дараах нөхцөлүүдийг шалгаж өгөгдлийн үр дүнг баталгаажуул:
-- Хэрэглэгчдийн хамгийн сүүлд хийсэн захиалга.
SELECT u.name AS user_name, MAX(o.order_date) AS last_order_date
FROM users u
JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id;

-- Нийт хамгийн их борлуулалттай бараа.
SELECT p.name AS product_name, SUM(od.quantity) AS total_sold
FROM products p
JOIN order_details od ON p.product_id = od.product_id
GROUP BY p.product_id
ORDER BY total_sold DESC
LIMIT 1;
