USE gestione_corsi;

-- Elimina tutte le iscrizioni nella tabella 'corsi_frequentati' dove il voto finale è inferiore a 7
DELETE FROM corsi_frequentati 
WHERE voto_finale < 7;