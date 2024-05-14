-- Membuat relasi aplikasi_info
CREATE TABLE aplikasi_info (
    judul_aplikasi VARCHAR(255) NOT NULL,
    tanggal_peluncuran DATE NOT NULL,
    ukuran INT NOT NULL,
    deskripsi VARCHAR(255) NOT NULL,
    email_developer VARCHAR(255) NOT NULL,
    PRIMARY KEY (`judul_aplikasi`),
    FOREIGN KEY (`email_developer`) REFERENCES `developer`(`email_developer`)
);

-- Memasukkan data yang dibutuhkan ke relasi aplikasi_info dari relasi aplikasi
INSERT INTO aplikasi_info (judul_aplikasi, tanggal_peluncuran, ukuran, deskripsi, email_developer)
SELECT judul_aplikasi, tanggal_peluncuran, ukuran, deskripsi, email_developer
FROM aplikasi;

-- Membuat relasi aplikasi_harga
CREATE TABLE aplikasi_harga (
    judul_aplikasi VARCHAR(255) NOT NULL,
    harga INT NOT NULL,
    PRIMARY KEY (`judul_aplikasi`),
    FOREIGN KEY (`judul_aplikasi`) REFERENCES `aplikasi_info` (`judul_aplikasi`)
);

-- Memasukkan data yang dibutuhkan ke relasi aplikasi_harga dari relasi aplikasi
INSERT INTO aplikasi_harga (judul_aplikasi, harga)
SELECT judul_aplikasi, harga
FROM aplikasi;

-- Penyesuaian Foreign Key yang tadinya berhubungan ke relasi aplikasi menjadi berhubungan ke relasi aplikasi_info
ALTER TABLE awards DROP FOREIGN KEY awards_ibfk_1;
ALTER TABLE awards
ADD FOREIGN KEY (`judul_vidgame`) REFERENCES `aplikasi_info` (`judul_aplikasi`);

ALTER TABLE vidgame_genre DROP FOREIGN KEY vidgame_genre_ibfk_1;
ALTER TABLE vidgame_genre
ADD FOREIGN KEY (`judul_vidgame`) REFERENCES `aplikasi_info` (`judul_aplikasi`);

ALTER TABLE video_game DROP FOREIGN KEY video_game_ibfk_1;
ALTER TABLE video_game
ADD FOREIGN KEY (`judul_vidgame`) REFERENCES `aplikasi_info` (`judul_aplikasi`);

ALTER TABLE dlc DROP FOREIGN KEY dlc_ibfk_1;
ALTER TABLE dlc
ADD FOREIGN KEY (`judul_vidgame`) REFERENCES `aplikasi_info` (`judul_aplikasi`);

ALTER TABLE soundtrack DROP FOREIGN KEY soundtrack_ibfk_1;
ALTER TABLE soundtrack
ADD FOREIGN KEY (`judul_soundtrack`) REFERENCES `aplikasi_info` (`judul_aplikasi`);

ALTER TABLE lagu DROP FOREIGN KEY lagu_ibfk_1;
ALTER TABLE lagu
ADD FOREIGN KEY (`judul_soundtrack`) REFERENCES `aplikasi_info` (`judul_aplikasi`);

ALTER TABLE aplikasi_pengguna DROP FOREIGN KEY aplikasi_pengguna_ibfk_1;
ALTER TABLE awards
ADD FOREIGN KEY (`judul_vidgame`) REFERENCES `aplikasi_info` (`judul_aplikasi`);

ALTER TABLE forum DROP FOREIGN KEY forum_ibfk_2;
ALTER TABLE forum
ADD FOREIGN KEY (`judul_aplikasi`) REFERENCES `aplikasi_info` (`judul_aplikasi`);

-- Menghapus tabel aplikasi
DROP TABLE aplikasi;