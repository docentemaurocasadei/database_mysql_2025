USE gestione_corsi;

-- Determina lo stato del corsista in base alla presenza o meno di un indirizzo email (ad esempio)
SELECT id, nome,
       CASE 
           WHEN email LIKE '%@%' THEN 'Email Presente'
           ELSE 'Email Mancante'
       END AS stato_email
FROM corsisti;