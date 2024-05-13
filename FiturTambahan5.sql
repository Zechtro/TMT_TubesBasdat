-- 5. Attracting Customer
-- Pihak Stim mencoba berbagai cara untuk mendapatkan hati para user Stim. Salah satu cara yang mereka tempuh adalah menurunkan harga yang ada. Maka dari itu, pihak Stim ingin menurunkan harga DLC agar tidak lebih mahal dibanding harga video gamenya. Untuk data DLC yang sudah ada, jika harga DLC lebih mahal dibanding harga video game, ubah nilai harga tersebut menjadi sama dengan harga video game. Sebagai upaya pencegahan hal ini terjadi kedepannya, tambahkan trigger pada data DLC untuk kondisi insert dan update untuk memastikan bahwa harga DLC tidak mungkin diatas harga video game bersangkutan.

UPDATE dlc AS d
SET d.harga_dlc = (
    SELECT a.harga 
    FROM aplikasi a
    WHERE a.judul_aplikasi = d.judul_vidgame
)
WHERE d.harga_dlc > (
    SELECT a.harga
    FROM aplikasi a
    WHERE a.judul_aplikasi = d.judul_vidgame
);

DELIMITER $$
CREATE TRIGGER validasi_harga_dlc
BEFORE INSERT ON dlc
FOR EACH ROW
BEGIN
    DECLARE harga_game INT;

    SELECT harga INTO harga_game
    FROM aplikasi a
    WHERE a.judul_aplikasi = NEW.judul_vidgame;

    IF NEW.harga_dlc > harga_game THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Harga DLC tidak boleh lebih mahal dari harga game';
    END IF;
END $$
DELIMITER ;