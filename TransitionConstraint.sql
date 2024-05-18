-- Implementasi Sintaks PPT (ini emang jadi ga jelas sintaks nya gegara ngikutin PPT)
-- CONSTRAINT prevent_status_friends_to_pending IS_EMPTY
-- ( ( ( status_pertemanan (email_pengguna, email_teman, status) RENAME status AS status)
--     JOIN status_pertemanan (email_pengguna, email_teman, status) )
--     WHERE status = 'FRIENDS' AND status = 'PENDING' );

DELIMITER $$
CREATE TRIGGER prevent_status_friends_to_pending
BEFORE UPDATE ON status_pertemanan
FOR EACH ROW
BEGIN
    IF OLD.status = 'FRIENDS' AND NEW.status = 'PENDING' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid update';
    END IF;
END $$
DELIMITER ;

-- Implementasi Sintaks PPT (ini emang jadi ga jelas sintaks nya gegara ngikutin PPT)
-- CONSTRAINT prevent_status_block_to_pending IS_EMPTY
-- ( ( ( status_pertemanan (email_pengguna, email_teman, status) RENAME status AS status)
--     JOIN status_pertemanan (email_pengguna, email_teman, status) )
--     WHERE status = 'BLOCK' AND status = 'PENDING' );

-- asumsi block tidak menghapus teman, jika di-unblock maka status akan menjadi FRIENDS
DELIMITER $$
CREATE TRIGGER prevent_status_block_to_pending
BEFORE UPDATE ON status_pertemanan
FOR EACH ROW
BEGIN
    IF OLD.status = 'BLOCK' AND NEW.status = 'PENDING' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid update';
    END IF;
END $$
DELIMITER ;