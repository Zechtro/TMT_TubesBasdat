-- Implementasi sintaks PPT
-- Tidak ada contoh di ppt

-- Implementasi SQL
ALTER TABLE pengikut_developer
ADD CONSTRAINT `fk_email_pengguna`
FOREIGN KEY (`email_pengguna`)
REFERENCES `pengguna`(`email_pengguna`)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- Implementasi sintaks PPT
-- Tidak ada contoh di ppt

-- Implementasi SQL
ALTER TABLE forum
ADD CONSTRAINT fk_forum_pengguna
FOREIGN KEY (email_pengguna)
REFERENCES pengguna(email_pengguna)
ON DELETE RESTRICT;
