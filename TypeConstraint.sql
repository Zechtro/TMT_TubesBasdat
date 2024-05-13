-- Persoalan harga harus dipastikan di atas 0

TYPE HRG POSSREP (INT)
CONSTRAINT tipe_harga (HRG) >= 0;

TYPE UKR POSSREP (INT)
CONSTRAINT tipe_ukuran (UKR) > 0;