
-- 1. Estrarre tutti i clienti iscritti alla palestra
SELECT * FROM clienti;

-- 2. Visualizzare tutti gli abbonamenti disponibili
SELECT * FROM abbonamenti;

-- 3. Mostrare tutti i clienti con il tipo di abbonamento scelto
SELECT clienti.nome, clienti.cognome, abbonamenti.nome AS tipo_abbonamento, iscrizioni.data_inizio, iscrizioni.data_fine
FROM iscrizioni
JOIN clienti ON iscrizioni.cliente_id = clienti.cliente_id
JOIN abbonamenti ON iscrizioni.abbonamento_id = abbonamenti.abbonamento_id;

-- 4. Mostrare i clienti con abbonamento ancora valido oggi
SELECT clienti.nome, clienti.cognome, iscrizioni.data_fine
FROM iscrizioni
JOIN clienti ON iscrizioni.cliente_id = clienti.cliente_id
WHERE iscrizioni.data_fine >= CURRENT_DATE;

-- 5. Contare quanti clienti hanno un abbonamento attivo
SELECT COUNT(*) AS clienti_attivi
FROM iscrizioni
WHERE data_fine >= CURRENT_DATE;

-- 6. Estrarre tutti i corsi disponibili con i rispettivi istruttori
SELECT nome, istruttore, orario, giorni_settimana FROM corsi;

-- 7. Mostrare quanti clienti hanno scelto ogni tipo di abbonamento
SELECT abbonamenti.nome, COUNT(iscrizioni.cliente_id) AS numero_clienti
FROM iscrizioni
JOIN abbonamenti ON iscrizioni.abbonamento_id = abbonamenti.abbonamento_id
GROUP BY abbonamenti.nome;

-- 9. Visualizzare i corsi disponibili nei giorni Lunedì e Mercoledì
SELECT * FROM corsi 
WHERE giorni_settimana LIKE '%Lunedì%' 
OR giorni_settimana LIKE '%Mercoledì%';

-- 10. Estrarre i clienti che hanno scelto un abbonamento annuale
SELECT clienti.nome, clienti.cognome 
FROM iscrizioni
JOIN clienti ON iscrizioni.cliente_id = clienti.cliente_id
JOIN abbonamenti ON iscrizioni.abbonamento_id = abbonamenti.abbonamento_id
WHERE abbonamenti.nome = 'Annuale';

-- Challenge Extra: Rinnovo automatico di un abbonamento
UPDATE iscrizioni
SET data_fine = data_fine + INTERVAL '3 months'
WHERE iscrizione_id = 1;

