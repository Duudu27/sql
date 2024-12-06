-- 13. Хязгаарлагдмал мэдээлэлтэй шинэ хүснэгт үүсгэх

-- Барааны төрөл болон тоо хэмжээний мэдээллийг тусгайлан агуулсан хүснэгт үүсгэж өгөгдлийг хуул.
-- Шинэ хүснэгт үүсгэх
CREATE TABLE Product_Category_Stock (
    category VARCHAR(100),           -- Барааны төрөл
    stock_quantity INT,              -- Тоо хэмжээ
    PRIMARY KEY (category)           -- Барааны төрлийг гол түлхүүр гэж ашиглана
);

-- Бүтээгдэхүүнүүдийн мэдээллийг шалгах
SELECT * FROM Product_Category_Stock;

