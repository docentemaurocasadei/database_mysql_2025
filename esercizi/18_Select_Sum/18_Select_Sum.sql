USE gestione_corsi;

-- Calcola la somma dei voti finali per ogni corso
SELECT corso_id, SUM(voto_finale) AS somma_voti 
FROM corsi_frequentati 
GROUP BY corso_id;