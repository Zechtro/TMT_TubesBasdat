-- Semua durasi lagu di bawah 5 detik akan dikosongkan
-- Semua konten_opini yang berisi string kosong akan dikosongkan

-- RELC1
CONSTRAINT RELC1
IS_EMPTY (lagu WHERE durasi < 5);

-- RELC2
CONSTRAINT RELC2
IS_EMPTY (post WHERE konten_opini = "");

