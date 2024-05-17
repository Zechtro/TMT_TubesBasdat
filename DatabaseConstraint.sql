-- Constraint untuk memastikan bahwa pemberian award harus dilakukan setelah aplikasi diluncurkan
-- CONSTRAINT THN_AWARDS
--     IS_EMPTY ((awards NATURAL JOIN aplikasi)
--         WHERE (awards.tahun_award >= YEAR(aplikasi.tanggal_peluncuran)));
-- Implementasi SQL
DELIMITER $$ 
CREATE TRIGGER check_awards_trigger
BEFORE INSERT ON awards
FOR EACH ROW
BEGIN
    DECLARE release_year INT; 

    SELECT YEAR(tanggal_peluncuran) INTO release_year
    FROM aplikasi 
    NATURAL JOIN awards
    WHERE awards.judul_vidgame = NEW.judul_vidgame;

    IF NEW.tahun_award <= release_year THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'tahun_award must be later than the YEAR(tanggal_peluncuran) of the video game';
    END IF;
END $$
DELIMITER ; 
DELIMITER $$ 
CREATE TRIGGER check_awards_trigger
BEFORE UPDATE ON awards
FOR EACH ROW
BEGIN
    DECLARE release_year INT; 

    SELECT YEAR(tanggal_peluncuran) INTO release_year
    FROM aplikasi 
    NATURAL JOIN awards
    WHERE awards.judul_vidgame = NEW.judul_vidgame;

    IF NEW.tahun_award <= release_year THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'tahun_award must be later than the YEAR(tanggal_peluncuran) of the video game';
    END IF;
END $$
DELIMITER ; 


-- Constraint untuk memastikan bahwa tanggal peluncuran dlc harus setelah tanggal peluncuran aplikasi
-- Implementasi SQL
-- DELIMITER $$
-- CREATE TRIGGER check_dlc_launch_date_trigger
-- BEFORE UPDATE ON awards
-- FOR EACH ROW
-- BEGIN
--     IF NEW.tanggal_peluncuran_dlc <= (SELECT tanggal_peluncuran FROM aplikasi NATURAL JOIN dlc WHERE NEW.dlc.judul_vidgame = aplikasi.judul_aplikasi) THEN
--         RAISE EXCEPTION 'tanggal_peluncuran_dlc must be later than the tanggal_peluncuran of the video game';
--     END IF;
--     RETURN NEW;
-- END $$
-- DELIMITER ;
-- DELIMITER $$
-- CREATE TRIGGER check_dlc_launch_date_trigger
-- BEFORE INSERT ON awards
-- FOR EACH ROW
-- BEGIN
--     IF NEW.tanggal_peluncuran_dlc <= (SELECT tanggal_peluncuran FROM aplikasi NATURAL JOIN dlc WHERE NEW.dlc.judul_vidgame = aplikasi.judul_aplikasi) THEN
--         RAISE EXCEPTION 'tanggal_peluncuran_dlc must be later than the tanggal_peluncuran of the video game';
--     END IF;
--     RETURN NEW;
-- END $$
-- DELIMITER ;


DELIMITER $$
CREATE TRIGGER check_dlc_launch_date_trigger
BEFORE UPDATE ON dlc
FOR EACH ROW
BEGIN
    DECLARE game_release_date DATE; 

    SELECT tanggal_peluncuran INTO game_release_date
    FROM aplikasi 
    WHERE judul_aplikasi = NEW.judul_vidgame;

    IF NEW.tanggal_peluncuran_dlc <= game_release_date THEN 
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'tanggal_peluncuran_dlc must be later than the tanggal_peluncuran of the video game';
    END IF;
END $$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER check_dlc_launch_date_trigger
BEFORE INSERT ON dlc
FOR EACH ROW
BEGIN
    DECLARE game_release_date DATE; 

    SELECT tanggal_peluncuran INTO game_release_date
    FROM aplikasi 
    WHERE judul_aplikasi = NEW.judul_vidgame;

    IF NEW.tanggal_peluncuran_dlc <= game_release_date THEN 
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'tanggal_peluncuran_dlc must be later than the tanggal_peluncuran of the video game';
    END IF;
END $$
DELIMITER ;
