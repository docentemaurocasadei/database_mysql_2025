use gestione_corsi;

ALTER TABLE corsisti
ADD COLUMN telefono VARCHAR(25),
ADD UNIQUE KEY uq_email (email);

ALTER TABLE corsi
ADD COLUMN costo DECIMAL(10,2) NOT NULL,
ADD COLUMN data_inizio DATE NOT NULL,
ADD COLUMN data_fine DATE;

ALTER TABLE aule
ADD COLUMN numero VARCHAR(3) NOT NULL;