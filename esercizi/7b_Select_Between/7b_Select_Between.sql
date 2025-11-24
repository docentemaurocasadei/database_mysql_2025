USE gestione_corsi;

-- Seleziona corsisti nati tra due date
SELECT
  *
FROM
  corsisti
WHERE
  data_nascita BETWEEN '1980-01-01' AND '1990-12-31';
