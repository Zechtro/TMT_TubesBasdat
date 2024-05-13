-- Constraint untuk memastikan bahwa pemberian award harus dilakukan setelah aplikasi diluncurkan
CONSTRAINT THN_AWARDS
    IS_EMPTY ((awards NATURAL JOIN aplikasi)
        WHERE (awards.tahun_award > YEAR(aplikasi.tanggal_peluncuran)));

-- Constraint untuk memastikan bahwa tanggal peluncuran dlc harus setelah tanggal peluncuran aplikasi
CONSTRAINT TGL_DLC
    IS_EMPTY ((dlc NATURAL JOIN aplikasi)
        WHERE (dlc.tanggal_peluncuran_dlc < aplikasi.tanggal_peluncuran));