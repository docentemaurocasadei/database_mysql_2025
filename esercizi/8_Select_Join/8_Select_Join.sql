USE gestione_corsi;

-- Elenca i corsisti iscritti a un corso specifico (ad esempio, corso con id = 1)
SELECT c.id, c.nome, c.cognome
FROM corsisti AS c
JOIN corsi_frequentati AS cf ON c.id = cf.corsista_id
WHERE cf.corso_id = 1
ORDER BY c.cognome, c.nome;