-- 1. Email Validation
-- Pastikan bahwa seluruh data email yang ada pada database merupakan email yang benar. Asumsikan format email yang benar adalah “<...>@<...>.com”. Bagian “<...>” dapat diisi oleh potongan String apapun. Buatlah check constraint untuk query insert yang mungkin terjadi di masa yang akan datang.

-- email_developer
ALTER TABLE developer
ADD CONSTRAINT chk_email_developer
CHECK (email_developer LIKE '%@%.com');

-- email_pengguna
ALTER TABLE pengguna
ADD CONSTRAINT chk_email_pengguna
CHECK (email_pengguna LIKE '%@%.com');
