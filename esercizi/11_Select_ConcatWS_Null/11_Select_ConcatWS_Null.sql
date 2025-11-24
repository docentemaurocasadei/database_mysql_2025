USE gestione_corsi;

-- CONCAT_WS su valori null (ad esempio, nome e telefono)
SELECT id, CONCAT_WS(' ', nome, telefono) AS nome_telefono
FROM corsisti;