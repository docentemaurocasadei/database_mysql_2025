USE gestione_corsi;

-- Aumenta la capienza dell'aula con id = 2 di 5 posti
UPDATE aule 
SET capienza = capienza + 5 
WHERE id = 2;