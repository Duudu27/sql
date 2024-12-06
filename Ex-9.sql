-- 9. Жагсаалтад тохирох өгөгдлийг олох

-- Products хүснэгтэд багтах 100,000₮-өөс дээш үнэтэй бүх бүтээгдэхүүнийг ол.
SELECT * FROM products WHERE price >= 100000;

-- Хэрэглэгчдийн имэйл хаягийг шалгаж, @gmail.com хаягтай хэрэглэгчдийг жагсаа.
SELECT * FROM users WHERE email LIKE '%@gmail.com';
