USE gestione_corsi;

INSERT INTO
  corsisti (
    nome,
    cognome,
    data_nascita,
    email,
    telefono
  )
VALUES
  (
    'Mario',
    'Rossi',
    '1985-04-15',
    'mario.rossi@example.com',
    '1234567890'
  ),
  (
    'Anna',
    'Bianchi',
    '1990-07-20',
    'anna.bianchi@example.com',
    '0987654321'
  ),
  (
    'Luca',
    'Verdi',
    '1988-11-30',
    'luca.verdi@example.com',
    NULL
  );

INSERT INTO
  corsi (
    nome,
    descrizione,
    durata_ore,
    data_inizio,
    data_fine,
    costo
  )
VALUES
  (
    'SQL Base',
    'Corso introduttivo a SQL',
    40,
    '2023-04-01',
    '2023-04-30',
    300.00
  ),
  (
    'MySQL Avanzato',
    'Approfondimenti su MySQL',
    60,
    '2023-05-01',
    '2023-06-15',
    450.50
  ),
  (
    'Programmazione PHP',
    'Corso di programmazione con PHP',
    50,
    '2023-06-01',
    '2023-06-30',
    350.75
  );

INSERT INTO
  aule (nome, capienza, numero)
VALUES
  ('Aula Magna', 100, 'A01'),
  ('Laboratorio', 30, 'L02'),
  ('Aula Standard', 50, 'S03');