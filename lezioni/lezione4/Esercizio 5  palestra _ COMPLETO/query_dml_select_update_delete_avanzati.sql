-- Esercizi Avanzati:
-- select con subquery
-- Visualizza i clienti che hanno acquistato l'abbonamento più costoso.
-- Update con subquery
-- Riduci del 20% il prezzo degli abbonamenti acquistati da più di 2 clienti.
-- DELETE con subquery
-- Elimina tutte le iscrizioni dei clienti iscritti prima del 1° maggio 2024.
-- CAST con somma prezzi abbonamenti
-- Visualizza il totale degli abbonamenti venduti, convertendo il prezzo in DOUBLE.
-- UPDATE con join
-- Cambia l'abbonamento dei clienti iscritti al "Trimestrale" con l'abbonamento "Annuale".

-- SELECT con Subquery: Trova i clienti che hanno acquistato l'abbonamento più costoso.

-- Visualizza i clienti che hanno acquistato l'abbonamento più costoso.
SELECT c.* 
FROM clienti c
JOIN iscrizioni i ON c.cliente_id = i.cliente_id
WHERE i.abbonamento_id = (
  SELECT abbonamento_id 
  FROM abbonamenti 
  ORDER BY prezzo DESC 
  LIMIT 1
);
UPDATE con subquery


-- Riduci del 20% il prezzo degli abbonamenti acquistati da più di 2 clienti.
UPDATE abbonamenti 
SET prezzo = prezzo * 0.8
WHERE abbonamento_id IN (
  SELECT abbonamento_id
  FROM iscrizioni
  GROUP BY abbonamento_id
  HAVING COUNT(cliente_id) > 5
);

-- DELETE con subquery
-- Elimina tutte le iscrizioni dei clienti iscritti prima del 1° maggio 2024.
DELETE FROM iscrizioni 
WHERE cliente_id IN (
  SELECT cliente_id 
  FROM clienti 
  WHERE data_iscrizione < '2024-05-01'
);

-- CAST con somma prezzi abbonamenti
-- Visualizza il totale degli abbonamenti venduti, convertendo il prezzo in DOUBLE.
SELECT CAST(SUM(prezzo) AS DOUBLE) AS totale_vendite 
FROM abbonamenti;

-- UPDATE con join
-- Cambia l'abbonamento dei clienti iscritti al "Trimestrale" con l'abbonamento "Annuale".
UPDATE iscrizioni
SET abbonamento_id = (
  SELECT abbonamento_id 
  FROM abbonamenti 
  WHERE nome = 'Annuale'
)
WHERE abbonamento_id = (
  SELECT abbonamento_id 
  FROM abbonamenti 
  WHERE nome = 'Trimestrale'
);

-- SELECT con Subquery: Trova i clienti che hanno acquistato l'abbonamento più costoso.
SELECT nome, cognome 
FROM clienti 
WHERE cliente_id IN (
  SELECT cliente_id 
  FROM iscrizioni 
  WHERE abbonamento_id = (
    SELECT abbonamento_id 
    FROM abbonamenti 
    ORDER BY prezzo DESC 
    LIMIT 1
  )
);
