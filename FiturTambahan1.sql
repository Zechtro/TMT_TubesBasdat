-- 1. Email Validation
-- Pastikan bahwa seluruh data email yang ada pada database merupakan email yang benar. Asumsikan format email yang benar adalah “<...>@<...>.com”. Bagian “<...>” dapat diisi oleh potongan String apapun. Buatlah check constraint untuk query insert yang mungkin terjadi di masa yang akan datang.
DELIMITER $$

CREATE TRIGGER `validasi_email_developer`
BEFORE INSERT
  ON developer FOR EACH ROW
BEGIN
    IF NEW.email_developer NOT LIKE '%@%.com' THEN 
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email developer tidak valid';
    END IF;
END
$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER `validasi_email_pengguna`
BEFORE INSERT ON pengguna
FOR EACH ROW
BEGIN
    IF NEW.email_pengguna NOT LIKE '%@%.com' THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email pengguna tidak valid';
    END IF;
END
$$
DELIMITER ;