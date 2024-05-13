CREATE TABLE aplikasi_info (
    judul_aplikasi VARCHAR(255) NOT NULL,
    tanggal_peluncuran DATE NOT NULL,
    ukuran INT NOT NULL,
    deskripsi VARCHAR(255) NOT NULL,
    email_developer VARCHAR(255) NOT NULL,
    PRIMARY KEY (`judul_aplikasi`),
    FOREIGN KEY (`email_developer`) REFERENCES `developer`(`email_developer`)
);

INSERT INTO aplikasi_info (judul_aplikasi, tanggal_peluncuran, ukuran, deskripsi, email_developer)
SELECT judul_aplikasi, tanggal_peluncuran, ukuran, deskripsi, email_developer
FROM aplikasi;


CREATE TABLE aplikasi_harga (
    judul_aplikasi VARCHAR(255) NOT NULL,
    harga INT NOT NULL,
    PRIMARY KEY (`judul_aplikasi`),
    FOREIGN KEY (`judul_aplikasi`) REFERENCES `aplikasi_info` (`judul aplikasi`)
);

INSERT INTO aplikasi_harga (judul_aplikasi, harga)
SELECT judul_aplikasi, harga
FROM aplikasi;

ALTER TABLE awards DROP FOREIGN KEY judul_vidgame;
ALTER TABLE awards
ADD FOREIGN KEY (`judul_vidgame`) REFERENCES `aplikasi_info` (`judul_aplikasi`);

ALTER TABLE vidgame_genre DROP FOREIGN KEY judul_vidgame;
ALTER TABLE vidgame_genre
ADD FOREIGN KEY (`judul_vidgame`) REFERENCES `aplikasi_info` (`judul_aplikasi`);

ALTER TABLE video_game DROP FOREIGN KEY judul_vidgame;
ALTER TABLE video_game
ADD FOREIGN KEY (`judul_vidgame`) REFERENCES `aplikasi_info` (`judul_aplikasi`);

ALTER TABLE dlc DROP FOREIGN KEY judul_vidgame;
ALTER TABLE dlc
ADD FOREIGN KEY (`judul_vidgame`) REFERENCES `aplikasi_info` (`judul_aplikasi`);

ALTER TABLE soundtrack DROP FOREIGN KEY judul_soundtrack;
ALTER TABLE soundtrack
ADD FOREIGN KEY (`judul_soundtrack`) REFERENCES `aplikasi_info` (`judul_aplikasi`);

ALTER TABLE lagu DROP FOREIGN KEY judul_soundtrack;
ALTER TABLE lagu
ADD FOREIGN KEY (`judul_soundtrack`) REFERENCES `aplikasi_info` (`judul_aplikasi`);

ALTER TABLE aplikasi_pengguna DROP FOREIGN KEY judul_aplikasi;
ALTER TABLE awards
ADD FOREIGN KEY (`judul_aplikasi`) REFERENCES `aplikasi_info` (`judul_aplikasi`);

ALTER TABLE forum DROP FOREIGN KEY judul_aplikasi;
ALTER TABLE forum
ADD FOREIGN KEY (`judul_aplikasi`) REFERENCES `aplikasi_info` (`judul_aplikasi`);

DROP TABLE aplikasi;
--  perlu modify foreign key