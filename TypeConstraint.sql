-- Persoalan harga harus dipastikan >= 0
-- Persoalan rating harus dipastikan (5 >= r >= 0)

-- tipe harga
TYPE HRG POSSREP (INT)
CONSTRAINT tipe_harga (HRG) >= 0;

-- tipe rating
TYPE RTG POSSREP (INT)
CONSTRAINT tipe_rating ((RTG) >= 0 AND (RTG) <= 5);