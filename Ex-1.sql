-- 1. ERD-гээс Хүснэгт үүсгэх

-- CREATE TABLE командаар ERD-д тусгагдсан хүснэгтүүдийг үүсгэ. Бүх PRIMARY KEY, FOREIGN KEY болон харилцааг зөв тодорхойл.

-- Users хүснэгт:
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,   
    name VARCHAR(255) NOT NULL,               
    email VARCHAR(255) UNIQUE NOT NULL,       
    phone_number VARCHAR(15)                
);

-- Products хүснэгт:
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,   
    name VARCHAR(255) NOT NULL,                   
    price DECIMAL(10, 2) NOT NULL,                
    category VARCHAR(100),                        
    stock_quantity INT NOT NULL                 
);

-- Orders хүснэгт:
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,    
    user_id INT,                                 
    order_date DATE NOT NULL,                    
    total_price DECIMAL(10, 2) NOT NULL,        
    FOREIGN KEY (user_id) REFERENCES users(user_id) 
);

-- Order_Details хүснэгт:
CREATE TABLE order_details (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,  
    order_id INT,                                   
    product_id INT,                                  
    quantity INT NOT NULL,                           
    FOREIGN KEY (order_id) REFERENCES orders(order_id),    
    FOREIGN KEY (product_id) REFERENCES products(product_id) 
);



