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