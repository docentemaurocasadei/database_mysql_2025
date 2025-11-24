USE gestione_corsi;

-- Elimina i corsisti la cui email contiene il dominio 'temp.com'
DELETE FROM corsisti 
WHERE email LIKE '%@temp.com%';