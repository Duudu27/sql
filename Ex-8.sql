-- 8.Хүчин төгөлдөр бус өгөгдөл устгах

-- Барааны үлдэгдэл 0 болсон эсвэл хугацаа хэтэрсэн бүтээгдэхүүнийг устга.
-- Барааны үлдэгдэл 0 болсон бүтээгдэхүүнийг устгах:
DELETE FROM Products
WHERE stock_quantity = 0;

-- SET SQL_SAFE_UPDATES = 0;



