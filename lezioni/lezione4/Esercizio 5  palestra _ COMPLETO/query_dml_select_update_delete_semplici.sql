-- Esercizi Semplici:
-- SELECT con filtro
-- Visualizza tutti i clienti iscritti dopo il 1° giugno 2024.

-- UPDATE semplice
-- Modifica il prezzo dell'abbonamento "Mensile" portandolo a 55.00 euro.

-- DELETE semplice
-- Elimina il cliente con l'email "marinom@gmail.com".

-- CAST semplice
-- Visualizza il prezzo degli abbonamenti come numero intero.

-- UPDATE con incremento
-- Aumenta di 10% il prezzo di tutti gli abbonamenti.

-- *** SOLUZIONI ***

-- SELECT con filtro
-- Visualizza tutti i clienti iscritti dopo il 1° giugno 2024.
SELECT * FROM clienti WHERE data_iscrizione > '2024-06-01';

-- UPDATE semplice
-- Modifica il prezzo dell'abbonamento "Mensile" portandolo a 55.00 euro.
UPDATE abbonamenti SET prezzo = 55.00 WHERE nome = 'Mensile';

-- DELETE semplice
-- Elimina il cliente con l'email "marinom@gmail.com".
DELETE FROM clienti WHERE email = 'marinom@gmail.com';

-- CAST semplice
-- Visualizza il prezzo degli abbonamenti come numero intero.
SELECT nome, CAST(prezzo AS UNSIGNED) AS prezzo_intero FROM abbonamenti;

-- UPDATE con incremento
-- Aumenta di 10% il prezzo di tutti gli abbonamenti.
UPDATE abbonamenti SET prezzo = prezzo * 1.1;
