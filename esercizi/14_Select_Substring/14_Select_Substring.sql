USE gestione_corsi;

-- Estrae le prime 3 lettere del nome dei corsisti
SELECT id, SUBSTRING(nome, 1, 3) AS inizio_nome 
FROM corsisti;