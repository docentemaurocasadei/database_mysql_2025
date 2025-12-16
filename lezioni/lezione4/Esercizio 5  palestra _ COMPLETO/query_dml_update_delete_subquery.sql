-- UPDATE: Aumenta il prezzo di tutti gli abbonamenti annuali del 10%.
-- DELETE: Cancella le iscrizioni dei clienti che si sono iscritti prima del 2024-06-01.
-- UPDATE con Subquery: Riduci del 5% il prezzo dell'abbonamento più economico.
-- DELETE con Subquery: Cancella le iscrizioni di chi ha sottoscritto un abbonamento trimestrale.

-- UPDATE: Aumenta il prezzo di tutti gli abbonamenti annuali del 10%.
UPDATE abbonamenti
SET prezzo = prezzo * 1.10
WHERE durata_mesi = 12;

-- DELETE: Cancella le iscrizioni dei clienti che si sono iscritti prima del 2024-06-01.
DELETE FROM iscrizioni
WHERE data_inizio < '2024-06-01';

-- UPDATE con Subquery: Riduci del 5% il prezzo dell'abbonamento più economico.
UPDATE abbonamenti
SET prezzo = prezzo * 0.95
WHERE abbonamento_id = (
  SELECT abbonamento_id
  FROM abbonamenti
  ORDER BY prezzo ASC
  LIMIT 1
);

-- DELETE con Subquery: Cancella le iscrizioni di chi ha sottoscritto un abbonamento trimestrale.
DELETE FROM iscrizioni
WHERE abbonamento_id = (
  SELECT abbonamento_id 
  FROM abbonamenti 
  WHERE nome = 'Trimestrale'
);