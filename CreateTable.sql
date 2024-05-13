CREATE TABLE developer (
    email_developer VARCHAR(255) NOT NULL,
    nama_developer VARCHAR(255) NOT NULL,
    tanggal_pendirian DATE NOT NULL,
    deskripsi VARCHAR(255) NOT NULL,
    PRIMARY KEY (`email_developer`)
);

CREATE TABLE pengguna (
    email_pengguna VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    nama_depan VARCHAR(255) NOT NULL,
    nama_belakang VARCHAR(255) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    level INT NOT NULL,
    PRIMARY KEY (`email_pengguna`)
);

CREATE TABLE aplikasi (
    judul_aplikasi VARCHAR(255) NOT NULL,
    tanggal_peluncuran DATE NOT NULL,
    harga INT NOT NULL,
    ukuran INT NOT NULL,
    deskripsi VARCHAR(255) NOT NULL,
    email_developer VARCHAR(255) NOT NULL,
    PRIMARY KEY (`judul_aplikasi`),
    FOREIGN KEY (`email_developer`) REFERENCES `developer`(`email_developer`)
);

CREATE TABLE video_game (
  judul_vidgame VARCHAR(255) NOT NULL,
  publisher VARCHAR(255) NOT NULL,
  PRIMARY KEY (`judul_vidgame`),
  FOREIGN KEY (`judul_vidgame`) REFERENCES `aplikasi`(`judul_aplikasi`)
);

CREATE TABLE aplikasi_pengguna (
    judul_aplikasi VARCHAR(255) NOT NULL,
    email_pengguna VARCHAR(255) NOT NULL,
    total_waktu INT NOT NULL,
    waktu_terakhir TIMESTAMP NOT NULL,
    jumlah_achievement INT NOT NULL,
    user_rating INT NOT NULL,
    -- CHECK (`user_rating` >= 0 AND user_rating <= 5),
    PRIMARY KEY (`judul_aplikasi`, `email_pengguna`),
    FOREIGN KEY (`judul_aplikasi`) REFERENCES `aplikasi`(`judul_aplikasi`),
    FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna`(`email_pengguna`)
);

CREATE TABLE forum (
    judul_forum VARCHAR(255) NOT NULL,
    waktu_pembuatan TIMESTAMP NOT NULL,
    email_pengguna VARCHAR(255) NOT NULL,
    judul_aplikasi VARCHAR(255) NOT NULL,
    PRIMARY KEY (`judul_forum`), 
    FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna`(`email_pengguna`),
    FOREIGN KEY (`judul_aplikasi`) REFERENCES `aplikasi`(`judul_aplikasi`)
);

CREATE TABLE vote_forum (
    id_vote INT AUTO_INCREMENT NOT NULL,
    tipe_vote ENUM('UP', 'DOWN') NOT NULL,
    judul_forum VARCHAR(255) NOT NULL,
    email_pengguna VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id_vote`),
    FOREIGN KEY (`judul_forum`) REFERENCES `forum`(`judul_forum`),
    FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna`(`email_pengguna`)
);

CREATE TABLE post (
    id_post INT AUTO_INCREMENT NOT NULL,
    waktu_pembuatan TIMESTAMP NOT NULL,
    konten_opini VARCHAR(255) NOT NULL,
    judul_forum VARCHAR(255) NOT NULL,
    email_pengguna VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id_post`),
    FOREIGN KEY (`judul_forum`) REFERENCES `forum`(`judul_forum`),
    FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna`(`email_pengguna`)
);

CREATE TABLE soundtrack (
    judul_soundtrack VARCHAR(255) NOT NULL,
    PRIMARY KEY (`judul_soundtrack`),
    FOREIGN KEY (`judul_soundtrack`) REFERENCES `aplikasi`(`judul_aplikasi`)
);

CREATE TABLE lagu (
    judul_lagu VARCHAR(255) NOT NULL,
    durasi INT NOT NULL,
    judul_soundtrack VARCHAR(255) NOT NULL,
    PRIMARY KEY (`judul_lagu`, `judul_soundtrack`),
    FOREIGN KEY (`judul_soundtrack`) REFERENCES `aplikasi`(`judul_aplikasi`)
);

CREATE TABLE dlc (
    judul_dlc VARCHAR(255) NOT NULL,
    judul_vidgame VARCHAR(255) NOT NULL,
    harga_dlc INT NOT NULL,
    tanggal_peluncuran_dlc DATE NOT NULL,
    PRIMARY KEY (`judul_dlc`, `judul_vidgame`),
    FOREIGN KEY (`judul_vidgame`) REFERENCES `aplikasi`(`judul_aplikasi`)
);

CREATE TABLE awards (
    id_awards INT AUTO_INCREMENT NOT NULL,
    kategori VARCHAR(255) NOT NULL,
    tahun_awards INT NOT NULL,
    judul_vidgame VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id_awards`),
    FOREIGN KEY (`judul_vidgame`) REFERENCES `aplikasi`(`judul_aplikasi`)
);

CREATE TABLE vidgame_genre (
    id_vidgame_genre INT AUTO_INCREMENT NOT NULL,
    judul_vidgame VARCHAR(255) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id_vidgame_genre`),
    FOREIGN KEY (`judul_vidgame`) REFERENCES `aplikasi`(`judul_aplikasi`)
);

CREATE TABLE pengikut_developer (
    id_pengikut_dev INT AUTO_INCREMENT NOT NULL,
    email_pengguna VARCHAR(255) NOT NULL,
    email_developer VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id_pengikut_dev`),
    FOREIGN KEY (`email_pengguna`) REFERENCES pengguna (`email_pengguna`),
    FOREIGN KEY (`email_developer`) REFERENCES developer (`email_developer`)
);

CREATE TABLE `status_pertemanan` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `status` enum('FRIENDS','PENDING','BLOCKED') DEFAULT NULL,
  `email_pengguna` varchar(255) DEFAULT NULL,
  `email_teman` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_status`),
  KEY `email_pengguna` (`email_pengguna`),
  KEY `email_teman` (`email_teman`),
  CONSTRAINT `status_pertemanan_ibfk_1` FOREIGN KEY (`email_pengguna`) REFERENCES `pengguna` (`email_pengguna`),
  CONSTRAINT `status_pertemanan_ibfk_2` FOREIGN KEY (`email_teman`) REFERENCES `pengguna` (`email_pengguna`)
);