USE gestione_corsi;

-- Incrementa lo stipendio del docente con id = 1 di 150 unità
UPDATE docenti 
SET stipendio = stipendio + 150 
WHERE id = 1;
