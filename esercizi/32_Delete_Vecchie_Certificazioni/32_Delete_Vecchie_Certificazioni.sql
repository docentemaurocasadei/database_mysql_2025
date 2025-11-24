USE gestione_corsi;

-- Elimina le certificazioni rilasciate prima del 2020
DELETE FROM certificazioni 
WHERE data_certificazione < '2020-01-01';