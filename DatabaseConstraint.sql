-- Constraint untuk memastikan bahwa pemberian award harus dilakukan setelah aplikasi diluncurkan
CONSTRAINT THN_AWARDS
    IS_EMPTY ((awards NATURAL JOIN aplikasi)
        WHERE (awards.tahun_award >= YEAR(aplikasi.tanggal_peluncuran)));
-- Implementasi SQL
CREATE TRIGGER check_awards_trigger
BEFORE INSERT OR UPDATE ON awards
FOR EACH ROW
BEGIN
    IF NEW.tahun_award <= (SELECT YEAR(tanggal_peluncuran) FROM aplikasi NATURAL JOIN awards WHERE NEW.awards.judul_vidgame = aplikasi.judul_aplikasi) THEN
        RAISE EXCEPTION 'tahun_award must be later than the YEAR(tanggal_peluncuran) of the video game';
    END IF;
    RETURN NEW;
END;


-- Constraint untuk memastikan bahwa tanggal peluncuran dlc harus setelah tanggal peluncuran aplikasi
CONSTRAINT TGL_DLC
    IS_EMPTY ((dlc NATURAL JOIN aplikasi)
        WHERE (dlc.tanggal_peluncuran_dlc < aplikasi.tanggal_peluncuran));
-- Implementasi SQL
CREATE TRIGGER check_dlc_launch_date_trigger
BEFORE INSERT OR UPDATE ON awards
FOR EACH ROW
BEGIN
    IF NEW.tanggal_peluncuran_dlc <= (SELECT tanggal_peluncuran FROM aplikasi NATURAL JOIN dlc WHERE NEW.dlc.judul_vidgame = aplikasi.judul_aplikasi) THEN
        RAISE EXCEPTION 'tanggal_peluncuran_dlc must be later than the tanggal_peluncuran of the video game';
    END IF;
    RETURN NEW;
END;
