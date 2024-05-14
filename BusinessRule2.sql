CREATE TABLE pengguna_aktif (
    email_pengguna VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL UNIQUE,
    `password` VARCHAR(255) NOT NULL,
    nama_depan VARCHAR(255) NOT NULL,
    nama_belakang VARCHAR(255) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    jumlah_aplikasi INT NOT NULL,
    `level` INT NOT NULL,
    PRIMARY KEY (`email_pengguna`)
);

INSERT INTO pengguna_aktif (email_pengguna, username, `password`, nama_depan, nama_belakang, tanggal_lahir, jumlah_aplikasi, `level`)
SELECT 
    p.email_pengguna, 
    p.username, 
    p.`password`, 
    p.nama_depan, 
    p.nama_belakang, 
    p.tanggal_lahir, 
    COUNT(ap.judul_aplikasi) AS jumlah_aplikasi, 
    p.`level`
FROM pengguna p
JOIN aplikasi_pengguna ap ON p.email_pengguna = ap.email_pengguna
GROUP BY 
    p.email_pengguna;

CREATE TABLE pengguna_pasif (
    email_pengguna VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL UNIQUE,
    `password` VARCHAR(255) NOT NULL,
    nama_depan VARCHAR(255) NOT NULL,
    nama_belakang VARCHAR(255) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    `level` INT NOT NULL,
    PRIMARY KEY (`email_pengguna`)
);

INSERT INTO pengguna_pasif
SELECT p.*
FROM pengguna p
LEFT JOIN aplikasi_pengguna ap ON p.email_pengguna = ap.email_pengguna
WHERE ap.email_pengguna IS NULL;

-- Sebelum data dimasukan, kalo email_pengguna yang mau dimasukin ke relasi aplikasi_pengguna ada di tabel pengguna_pasif, tambahin dulu datanya ke tabel pengguna_aktif, kemudian hapus pengguna tersebut dari pengguna_pasif
DELIMITER &&
CREATE TRIGGER pengguna_pasif_to_aktif
BEFORE INSERT ON aplikasi_pengguna
FOR EACH ROW
BEGIN
    IF NEW.email_pengguna IN (
        SELECT email_pengguna
        FROM pengguna_pasif
    ) THEN
        INSERT INTO pengguna_aktif
            SELECT email_pengguna,username,password,nama_depan,nama_belakang, tanggal_lahir,1,level
            FROM pengguna_pasif pp
            WHERE NEW.email_pengguna = pp.email_pengguna
        ;

        DELETE FROM pengguna_pasif
        WHERE email_pengguna = NEW.email_pengguna;
    END IF;
END &&
DELIMITER ;

-- Update total_aplikasi yang dimiliki pengguna_aktif
DELIMITER &&
CREATE TRIGGER adjust_total_aplikasi
AFTER INSERT ON aplikasi_pengguna
FOR EACH ROW
BEGIN
    IF NEW.email_pengguna IN (
        SELECT email_pengguna
        FROM pengguna_aktif
    ) THEN
        UPDATE pengguna_aktif pa
        SET pa.total_aplikasi = (
            SELECT COUNT(*)
            FROM aplikasi_pengguna ap
            WHERE NEW.email_pengguna = ap.email_pengguna
        );
    END IF;
END &&
DELIMITER ;

-- Kalo mau nambah pengguna baru, berarti belum punya aplikasi sama sekali, otomatis akan masuk ke tabel pengguna_pasif, pada saat ditambahkan, maka lakukan penambahan juga pada tabel pengguna
DELIMITER $$
CREATE TRIGGER insert_pengguna_baru
AFTER INSERT ON pengguna_pasif
FOR EACH ROW
BEGIN
    IF NEW.email_pengguna NOT IN (
        SELECT email_pengguna
        FROM pengguna
    ) THEN
        INSERT INTO pengguna
        VALUES (NEW.email_pengguna);
    END IF;
END $$
DELIMITER ;

-- Tabel pengguna jadi hanya menyimpan informasi email_pengguna saja
ALTER TABLE pengguna
DROP COLUMN username;
ALTER TABLE pengguna
DROP COLUMN `password`;
ALTER TABLE pengguna
DROP COLUMN nama_depan;
ALTER TABLE pengguna
DROP COLUMN nama_belakang;
ALTER TABLE pengguna
DROP COLUMN tanggal_lahir;
ALTER TABLE pengguna
DROP COLUMN `level`;