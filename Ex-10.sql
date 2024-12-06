-- 10. Дэд хүснэгт ашиглах (Subquery)

-- Захиалгад хамгийн их бараа багтсан хэрэглэгчийн нэрийг ол.
SELECT u.name
FROM users u
WHERE u.user_id = (
    SELECT o.user_id
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
    GROUP BY o.user_id
    ORDER BY SUM(od.quantity) DESC
    LIMIT 1
);


-- Хамгийн их бараа зарагдсан категориудыг ол.
SELECT category
FROM products p
JOIN order_details od ON p.product_id = od.product_id
GROUP BY category
ORDER BY SUM(od.quantity) DESC
LIMIT 1;


