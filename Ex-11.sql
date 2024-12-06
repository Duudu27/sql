-- 11. Хязгаарлалт (Constraints) нэмэх

-- Бүтээгдэхүүний үнэнд доод хязгаарлалт (10,000₮-өөс багагүй) тогтоох.
ALTER TABLE products
ADD CONSTRAINT price_check CHECK (price >= 10000);

