-- 3. User Forum Possession
-- Pihak Stim membuat regulasi baru bahwa user hanya dapat membuat forum apabila ia memiliki aplikasi yang berkaitan. (Hal ini menjawab asumsi yang telah dibuat). Maka dari itu, pastikan bahwa pada data forum, semua user yang menginisiasi adalah user yang sudah memiliki aplikasi tersebut. Jika ada data yang tidak sesuai, pihak Stim akan melakukan take down terhadap forum terkait. Data forum tersebut akan dihapus, tentunya juga untuk seluruh post yang dikandungnya. Untuk memudahkan ketika hal ini terjadi lagi, implementasikan constraint pada tabel post untuk kondisi delete dan update yang mungkin terjadi kedepannya.
ALTER TABLE post
    ADD CONSTRAINT `fk_email_pengguna`
    FOREIGN KEY (`email_pengguna`)
    REFERENCES `pengguna`(`email_pengguna`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    
    ADD CONSTRAINT `fk_judul_forum`
    FOREIGN KEY (`judul_forum`)
    REFERENCES `forum`(`judul_forum`)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

ALTER TABLE vote_forum
    ADD CONSTRAINT `fk_vote_forum`
    FOREIGN KEY (`judul_forum`)
    REFERENCES `forum`(`judul_forum`)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

DELETE FROM forum
WHERE judul_forum IN (
    SELECT f.judul_forum
    FROM forum f
    LEFT JOIN aplikasi_pengguna ap ON f.email_pengguna = ap.email_pengguna AND f.judul_aplikasi = ap.judul_aplikasi
    WHERE ap.email_pengguna IS NULL
);

DELIMITER $$
CREATE TRIGGER check_forum_owner
BEFORE INSERT ON forum
FOR EACH ROW
BEGIN
    DECLARE app_owner_email VARCHAR(255);
    SELECT email_developer INTO app_owner_email FROM aplikasi WHERE judul_aplikasi = NEW.judul_aplikasi;
    
    IF NEW.email_pengguna NOT IN (SELECT email_pengguna FROM aplikasi_pengguna WHERE judul_aplikasi = NEW.judul_aplikasi)
    THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'User does not own the related application. Cannot create forum.';
    END IF;
END $$
DELIMITER ;

