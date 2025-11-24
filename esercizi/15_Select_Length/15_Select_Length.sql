USE gestione_corsi;

-- Calcola la lunghezza dell'email dei corsisti
SELECT id, LENGTH(email) AS lunghezza_email 
FROM corsisti;