-- Persoalan harga harus dipastikan >= 0
-- Persoalan rating harus dipastikan (5 >= r >= 0)

-- tipe harga
-- TYPE HRG POSSREP (INT)
-- CONSTRAINT tipe_harga (HRG) >= 0;

ALTER TABLE aplikasi
ADD CONSTRAINT chk_harga
CHECK (harga >= 0);

-- tipe rating
-- TYPE RTG POSSREP (INT)
-- CONSTRAINT tipe_rating ((RTG) >= 0 AND (RTG) <= 5);

ALTER TABLE aplikasi_pengguna
ADD CONSTRAINT chk_user_rating
CHECK (user_rating >= 0 AND user_rating <= 5);