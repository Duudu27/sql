-- 6. Багаар ажиллах даалгавар

-- Шинэ хүснэгт (suppliers) нэмэх.
CREATE TABLE suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,   
    supplier_name VARCHAR(255) NOT NULL            
);


-- Бараа нийлүүлэгчтэй холбох харилцааг үүсгэх.
CREATE TABLE supplier_products (
    supplier_id INT,
    product_id INT,
    PRIMARY KEY (supplier_id, product_id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);


-- Холбоотой өгөгдлийг оруулах.
INSERT INTO suppliers (supplier_name) 
VALUES ('Supplier A'), ('Supplier B');

INSERT INTO supplier_products (supplier_id, product_id)
VALUES 
(1, 2),  
(2, 1); 
