-- Implementasi Sintaks PPT
-- VAR developer BASE RELATION(
--     …
--     deskripsi VARCHAR(255), 
--     …   
-- )

-- Implementasi SQL
CREATE TABLE developer (
    …
    deskripsi VARCHAR(255),
    …
)


-- Implementasi Sintaks PPT
-- TYPE ATTR POSINT (INT)
--     CONSTRAINT chk_harga(ATTR >= 0);

-- VAR aplikasi BASE RELATION (
--     …
--     harga POSINT,
--     …
-- )

-- Implementasi SQL
CHECK (harga >= 0);


-- Implementasi Sintaks PPT
-- TYPE USR_RATING RATING(INT)
--     CONSTRAINT chk_user_rating ((USR_RATING) >= 0 AND
--                                (USR_RATING) <= 5);
-- VAR aplikasi_pengguna BASE RELATION (
--     …
--     user_rating RATING,
--     …
-- )

-- Implementasi SQL
CHECK (user_rating >= 0 AND user_rating <= 5);