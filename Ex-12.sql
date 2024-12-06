-- 12. Төрөлжсөн тайлан гаргах

-- Бүх хэрэглэгчийн захиалсан нийт барааны тоог, захиалгын огноогоор нь жагсаах тайлан гарга.
SELECT u.name AS user_name, o.order_date, SUM(od.quantity) AS total_items_ordered
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN order_details od ON o.order_id = od.order_id
GROUP BY u.user_id, o.order_date
ORDER BY o.order_date;
