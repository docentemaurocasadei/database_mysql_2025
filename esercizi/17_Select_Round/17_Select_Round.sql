USE gestione_corsi;

-- Arrotonda il costo dei corsi a 1 decimale
SELECT id, ROUND(costo, 1) AS costo_arrotondato 
FROM corsi;