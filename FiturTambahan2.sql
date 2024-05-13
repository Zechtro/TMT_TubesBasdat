-- 2. The Achievers
-- Pihak Stim ingin mengetahui data users yang sangat antusias dalam menggunakan aplikasi mereka. Hal ini dapat ditandai dengan jumlah achievements yang mereka miliki. Buatlah view untuk yang mengandung 10 data user yang memiliki jumlah akumulasi achievements paling banyak. Dalam view tersebut tampilkan seluruh username user. Tak hanya itu, tampilkan juga nama aplikasi yang dimainkannya, banyaknya achievement yang didapat, dan lama waktu yang ia habiskan untuk mendapatkan achievements tersebut untuk masing-masing aplikasi. 

CREATE VIEW the_achievers AS
SELECT username, judul_aplikasi, jumlah_achievement, total_waktu
FROM
    (SELECT p.email_pengguna, username, COUNT(jumlah_achievement)
    FROM pengguna p JOIN aplikasi_pengguna ap
    ON p.email_pengguna = ap.email_pengguna
    GROUP BY p.email_pengguna
    ORDER BY COUNT(jumlah_achievement) DESC
    LIMIT 10) AS top_ten
    JOIN aplikasi_pengguna ap
    ON top_ten.email_pengguna = ap.email_pengguna;