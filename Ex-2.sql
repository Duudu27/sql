-- 2. Өгөгдөл оруулах

-- Products хүснэгтэд 5 төрлийн бүтээгдэхүүн оруулах:
INSERT INTO products (name, price, category, stock_quantity) 
VALUES 
('Product A', 50000, 'Electronics', 100),
('Product B', 15000, 'Electronics', 200),
('Product C', 80000, 'Furniture', 50),
('Product D', 25000, 'Furniture', 30),
('Product E', 100000, 'Clothing', 150);


-- Users хүснэгтэд 3 хэрэглэгчийн мэдээлэл оруулах:
INSERT INTO users (name, email, phone_number) 
VALUES 
('John Doe', 'john.doe@example.com', '999999999'),
('Jane Smith', 'jane.smith@example.com', '888888888'),
('Alice Johnson', 'alice.johnson@example.com', '777777777');


-- Orders хүснэгтэд 1 захиалга үүсгэж, Order_Details хүснэгтэд тухайн захиалгын 2 барааны мэдээллийг нэмэх:
INSERT INTO orders (user_id, order_date, total_price) 
VALUES 
(1, '2024-12-06', 80000); -- John Doe-ийн захиалга

INSERT INTO order_details (order_id, product_id, quantity) 
VALUES 
(1, 2, 2),  
(1, 3, 1);  
