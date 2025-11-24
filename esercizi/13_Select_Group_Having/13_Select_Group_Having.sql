USE gestione_corsi;

-- Seleziona corsi che hanno più di 1 iscrizione
SELECT corso_id, COUNT(*) AS num_iscrizioni 
FROM corsi_frequentati 
GROUP BY corso_id 
HAVING COUNT(*) > 1;

#oppure

SELECT corso_id, COUNT(*) AS num_iscrizioni 
FROM corsi_frequentati 
GROUP BY corso_id 
HAVING num_iscrizioni > 1;