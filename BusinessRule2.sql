CREATE TABLE pengguna_aktif (
    email_pengguna VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    nama_depan VARCHAR(255) NOT NULL,
    nama_belakang VARCHAR(255) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    jumlah_aplikasi INT NOT NULL,
    level INT NOT NULL,
    PRIMARY KEY (`email_pengguna`)
);

INSERT INTO pengguna_aktif (email_pengguna, username, password, nama_depan, nama_belakang, tanggal_lahir, jumlah_aplikasi, level)
SELECT 
    p.email_pengguna, 
    p.username, 
    p.password, 
    p.nama_depan, 
    p.nama_belakang, 
    p.tanggal_lahir, 
    COUNT(ap.aplikasi) AS jumlah_aplikasi, 
    p.level
FROM pengguna p
JOIN aplikasi_pengguna ap ON p.email_pengguna = ap.email_pengguna
GROUP BY 
    p.email_pengguna;

CREATE TABLE pengguna_pasif (
    email_pengguna VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    nama_depan VARCHAR(255) NOT NULL,
    nama_belakang VARCHAR(255) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    level INT NOT NULL,
    PRIMARY KEY (`email_pengguna`)
);

INSERT INTO pengguna_pasif
SELECT p.*
FROM pengguna p
LEFT JOIN aplikasi_pengguna ap ON p.email_pengguna = ap.email_pengguna
WHERE ap.email_pengguna IS NULL;

ALTER TABLE aplikasi_pengguna DROP FOREIGN KEY email_pengguna;
ALTER TABLE aplikasi_pengguna
ADD FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna_aktif` (`email_pengguna`);

ALTER TABLE pengikut_developer DROP FOREIGN KEY email_pengguna;
ALTER TABLE pengikut_developer
ADD FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna_aktif` (`email_pengguna`),
ADD FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna_pasif` (`email_pengguna`);

ALTER TABLE forum DROP FOREIGN KEY email_pengguna;
ALTER TABLE forum
ADD FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna_aktif` (`email_pengguna`),
ADD FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna_pasif` (`email_pengguna`);

ALTER TABLE post DROP FOREIGN KEY email_pengguna;
ALTER TABLE post
ADD FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna_aktif` (`email_pengguna`),
ADD FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna_pasif` (`email_pengguna`);

ALTER TABLE vote_forum DROP FOREIGN KEY email_pengguna;
ALTER TABLE vote_forum
ADD FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna_aktif` (`email_pengguna`),
ADD FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna_pasif` (`email_pengguna`);

ALTER TABLE status_pertemanan DROP FOREIGN KEY email_pengguna;
ALTER TABLE status_pertemanan
ADD FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna_aktif` (`email_pengguna`),
ADD FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna_pasif` (`email_pengguna`);

ALTER TABLE status_pertemanan DROP FOREIGN KEY email_teman;
ALTER TABLE status_pertemanan
ADD FOREIGN KEY (`email_teman`) REFERENCES `pengguna_aktif` (`email_pengguna`),
ADD FOREIGN KEY (`email_teman`) REFERENCES `pengguna_pasif` (`email_pengguna`);

DROP TABLE pengguna