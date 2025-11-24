USE gestione_corsi;

-- Modifica la data di inizio per il corso con id = 2
UPDATE corsi 
SET data_inizio = DATE_ADD(data_inizio, INTERVAL 7 DAY)
WHERE id = 2;