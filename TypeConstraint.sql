-- Implementasi Sintaks PPT
-- TYPE status_value POSSREP (VARCHAR)
--     CONSTRAINT valid_values (status) = 'FRIENDS' || (status) = 'PENDING' || (status) = 'BLOCKED'

-- Implementasi SQL
status ENUM('FRIENDS','PENDING','BLOCKED');

-- Implementasi Sintaks PPT
-- TYPE tipe_vote_value POSSREP (VARCHAR)
--     CONSTRAINT valid_values (tipe_vote) = 'DOWN' || (tipe_vote) = 'UP'

-- Implementasi SQL
tipe_vote ENUM('UP', 'DOWN');