USE gestione_corsi;

-- Nome completo in maiuscolo
SELECT id, UPPER(CONCAT(nome, ' ', cognome)) AS nome_completo
FROM corsisti;