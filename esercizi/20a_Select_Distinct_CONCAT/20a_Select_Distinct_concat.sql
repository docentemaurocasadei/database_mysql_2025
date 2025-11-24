USE gestione_corsi;

-- Seleziona i nomi unici presenti nella tabella corsisti
SELECT DISTINCT CONCAT(nome, ' ', cognome) AS nome_completo
FROM corsisti;