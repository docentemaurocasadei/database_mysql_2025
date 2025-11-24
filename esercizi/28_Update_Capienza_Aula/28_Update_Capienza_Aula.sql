USE gestione_corsi;

-- Applica uno sconto del 10% sul costo del corso con id = 1
UPDATE corsi 
SET costo = costo * 0.9 
WHERE id = 1;