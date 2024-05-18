-- Implementasi Sintaks PPT
-- deskripsi VARCHAR(255) UNIQUE
-- CONSTRAINT deskripsi_value
-- IS_EMPTY (developer WHERE deskripsi = NULL)

-- Implementasi SQL
deskripsi VARCHAR(255) UNIQUE NOT NULL;

-- Implementasi Sintaks PPT
-- CONSTRAINT FREE
-- IS_EMPTY (aplikasi WHERE deskripsi = "%free to play%" 
-- && harga != 0);

-- Implementasi SQL
CHECK (deskripsi NOT LIKE "%free to play%" OR harga = 0);
