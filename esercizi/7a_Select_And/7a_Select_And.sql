USE gestione_corsi;

-- Seleziona corsisti con nome 'Mario' AND cognome 'Rossi'
SELECT
  *
FROM
  corsisti
WHERE
  nome = 'Mario'
  AND cognome = 'Rossi';