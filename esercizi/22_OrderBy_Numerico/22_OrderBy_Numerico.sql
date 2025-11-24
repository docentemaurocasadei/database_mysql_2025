USE gestione_corsi;

-- Ordina i corsisti in base all'anno di nascita (decrescente)
SELECT * 
FROM corsisti 
ORDER BY YEAR(data_nascita) DESC;