-- Membuat fungsi untuk menghitung umur berdasarkan tanggal lahir pengguna, dihitung sampai tanggal hari ini (tergantung nge-run quernya kapan)
DELIMITER $$
CREATE FUNCTION calculate_age (initDate DATETIME)
RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE years_diff INT;
  DECLARE age INT;
  SET years_diff = YEAR(CURDATE()) - YEAR(initDate);
  SET age = years_diff - 
           (CASE WHEN 
                (MONTH(CURDATE()) < MONTH(initDate) OR 
                (MONTH(CURDATE()) = MONTH(initDate) AND DAY(CURDATE()) < DAY(initDate)))
            THEN 1 
            ELSE 0 
            END);
  RETURN age;
END$$
DELIMITER ;

-- Menghapus kepemilikan aplikasi yang rilis tahun 2024 keatas dengan pemilik (pengguna) yang berumur dibawah 18 tahun
DELETE FROM aplikasi_pengguna
WHERE judul_aplikasi IN (
    SELECT judul_aplikasi
    FROM aplikasi
    WHERE YEAR(tanggal_peluncuran) >= 2024
) AND email_pengguna IN (
    SELECT email_pengguna
    FROM pengguna
    WHERE calculate_age(tanggal_lahir) < 18
);

-- Membuat trigger untuk menolak pengguna yang berumur dibawah 18 tahun memiliki aplikasi yang diluncurkan tahun 2024 keatas
DELIMITER $$
CREATE OR REPLACE TRIGGER access_restriction
BEFORE INSERT ON aplikasi_pengguna
FOR EACH ROW
BEGIN
    IF NEW.email_pengguna IN (
        SELECT email_pengguna
        FROM pengguna
        WHERE calculate_age(tanggal_lahir) < 18
    ) AND NEW.judul_aplikasi IN (
        SELECT judul_aplikasi
        FROM aplikasi
        WHERE YEAR(tanggal_peluncuran) >= 2024
    )
    THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Umur pengguna belum mencukupi';
    END IF;
END $$
DELIMITER ;

-- YANG BAGIAN INI GAPERLU DIMASUKIN LAPORAN, CUMAN BUAT TESTING PRIBADI AJA
-- Pre-Query

-- Cari email_pengguna yang umurnya < 18
-- SELECT email_pengguna
-- FROM pengguna
-- WHERE calculate_age(tanggal_lahir) < 18;

-- Cari judul_aplikasi yang tahun peluncuran >= 2024
-- SELECT judul_aplikasi
-- FROM aplikasi
-- WHERE YEAR(tanggal_peluncuran) >= 2024;

-- Masukin contoh aplikasi yang tahun peluncuran >= 2024
-- INSERT INTO aplikasi 
-- VALUES ('Wuthering Waves','2024-05-12',0,30367,'Delve into an expansive world, desolated by the lament, civilization is born anew','TALEROCK322@gmail.com');


-- Query Testing

-- Cek bisa di insert ga
-- INSERT INTO aplikasi_pengguna VALUES
-- ('Wuthering Waves','gabriellekevin997@gmail.com',10000,'2024-05-13 22:06:49',10,3);

-- Cek masih ada data yang tahun peluncuran aplikasi >= 2024 dan umur pengguna < 18
-- SELECT judul_aplikasi, email_pengguna
-- FROM aplikasi NATURAL JOIN aplikasi_pengguna NATURAL JOIN pengguna
-- WHERE calculate_age(tanggal_lahir) < 18 and YEAR(tanggal_peluncuran) >= 2024;




