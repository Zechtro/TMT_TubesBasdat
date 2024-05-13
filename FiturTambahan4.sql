-- 4. Application Rating
-- Pihak Stim mengerti bahwa user  juga mempertimbangkan rating aplikasi dalam menentukan aplikasi yang akan digunakan. Pihak Stim mengklaim bahwa mereka memiliki sekitar 73.000 aplikasi dalam databasenya. Maka dari itu, pihak Stim meminta kalian untuk membantu mereka untuk bisa mendapatkan nilai rating secara cepat tanpa harus melakukan perhitungan setiap kali nilai tersebut dibutuhkan. Tambahkan juga trigger untuk meng-handle perubahan nilai rating aplikasi setiap kali adanya perubahan pada nilai rating yang dilakukan user.
ALTER TABLE aplikasi ADD avg_rating DOUBLE;
ALTER TABLE aplikasi ADD CONSTRAINT `CONSTRAINT_1` CHECK (`avg_rating` >= 0 and `avg_rating` <= 5);
UPDATE aplikasi a
SET avg_rating = 
  (SELECT AVG(user_rating)
   FROM aplikasi_pengguna ap
   WHERE a.judul_aplikasi = ap.judul_aplikasi 
  );

CREATE OR REPLACE TRIGGER rata_rata_rating
AFTER INSERT ON aplikasi_pengguna
FOR EACH ROW
UPDATE aplikasi a
SET a.avg_rating = 
  (SELECT AVG(user_rating)
   FROM aplikasi_pengguna ap JOIN aplikasi a 
   ON a.judul_aplikasi = ap.judul_aplikasi
   WHERE a.judul_aplikasi = NEW.judul_aplikasi
  )
WHERE a.judul_aplikasi = NEW.judul_aplikasi;
