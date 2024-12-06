-- 7. Өгөгдлийн Харилцаа Ажиглах

-- Бараа бүтээгдэхүүн болон нийлүүлэгчдийн мэдээлэлтэй холбоотой бүх харилцааг харуулсан supplier_product_summary нэртэй view үүсгэ.
-- Нийлүүлэгч бүр хэдэн бараа нийлүүлж байгааг жагсаа.
-- Бүтээгдэхүүний төрлөөр нийлүүлэгчдийг ангил.
CREATE VIEW supplier_product_summary AS
SELECT s.supplier_name, p.name AS product_name, p.category
FROM suppliers s
JOIN supplier_products sp ON s.supplier_id = sp.supplier_id
JOIN products p ON sp.product_id = p.product_id;


