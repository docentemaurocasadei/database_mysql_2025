USE gestione_corsi;

-- Ordina i docenti in base al nome completo (concatenazione di cognome e nome)
SELECT id, CONCAT(cognome, ' ', nome) AS nome_completo 
FROM docenti 
ORDER BY nome_completo;