USE gestione_corsi;

-- Seleziona corsisti con nome 'Anna' OR 'Luca'
SELECT
  *
FROM
  corsisti
WHERE
  nome = 'Anna'
  OR nome = 'Luca';
