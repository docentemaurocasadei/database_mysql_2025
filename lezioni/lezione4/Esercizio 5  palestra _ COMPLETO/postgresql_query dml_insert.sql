-- 1. Inserimento Clienti
INSERT INTO clienti (nome, cognome, email, telefono, data_iscrizione)
VALUES 
('Luca', 'Bianchi', 'luca.bianchi@email.com', '3331234567', '2024-01-15'),
('Giulia', 'Rossi', 'giulia.rossi@email.com', '3347654321', '2024-02-10'),
('Marco', 'Verdi', 'marco.verdi@email.com', '3359876543', '2024-03-05'),
('Francesca', 'Neri', 'francesca.neri@email.com', '3361239876', '2024-03-10'),
('Alessandro', 'Gialli', 'alessandro.gialli@email.com', '3374561234', '2024-02-20'),
('Martina', 'Blu', 'martina.blu@email.com', '3389876543', '2024-01-25'),
('Davide', 'Ferri', 'davide.ferri@email.com', '3391234567', '2024-04-05'),
('Valentina', 'Grigi', 'valentina.grigi@email.com', '3407654321', '2024-03-15'),
('Andrea', 'Bianchi', 'andrea.bianchi@email.com', '3412345678', '2024-02-28'),
('Claudia', 'Rossi', 'claudia.rossi@email.com', '3423456789', '2024-01-10');

-- 2. Inserimento Abbonamenti
INSERT INTO abbonamenti (nome, durata_mesi, prezzo)
VALUES 
('Mensile', 1, 50.00),
('Trimestrale', 3, 130.00),
('Annuale', 12, 450.00),
('Semestrale', 6, 250.00),
('Quaterna', 4, 170.00);

-- 3. Inserimento Iscrizioni
-- 3. Inserimento Iscrizioni (con la data odierna aggiornata)
INSERT INTO iscrizioni (cliente_id, abbonamento_id, data_inizio, data_fine)
VALUES 
(1, 2, '2024-02-01', '2024-05-01'), -- Luca ha un abbonamento trimestrale (scaduto)
(2, 3, '2024-03-01', '2025-03-01'), -- Giulia ha un abbonamento annuale (ancora attivo)
(3, 1, '2024-04-01', '2024-05-01'), -- Marco ha un abbonamento mensile (scaduto)
(4, 2, '2024-03-12', '2024-06-12'), -- Francesca ha un abbonamento trimestrale (ancora attivo)
(5, 3, '2024-02-25', '2025-02-25'), -- Alessandro ha un abbonamento annuale (ancora attivo)
(6, 1, '2024-02-01', '2024-03-01'), -- Martina ha un abbonamento mensile (scaduto)
(7, 4, '2024-04-01', '2024-09-01'), -- Davide ha un abbonamento semestrale (ancora attivo)
(8, 2, '2024-03-20', '2024-06-20'), -- Valentina ha un abbonamento trimestrale (ancora attivo)
(9, 5, '2024-03-01', '2024-06-01'), -- Andrea ha un abbonamento quaterna (ancora attivo)
(10, 1, '2024-01-15', '2024-02-15'), -- Claudia ha un abbonamento mensile (scaduto)
(1, 3, '2024-03-01', '2025-03-01'), -- Luca ha un abbonamento annuale (ancora attivo)
(2, 4, '2024-02-15', '2024-08-15'), -- Giulia ha un abbonamento semestrale (ancora attivo)
(3, 5, '2024-02-25', '2024-06-25'), -- Marco ha un abbonamento quaterna (ancora attivo)
(4, 1, '2024-04-01', '2024-05-01'), -- Francesca ha un abbonamento mensile (scaduto)
(5, 2, '2024-02-10', '2024-05-10'); -- Alessandro ha un abbonamento trimestrale (ancora attivo)


-- 4. Inserimento Corsi
INSERT INTO corsi (nome, istruttore, orario, giorni_settimana)
VALUES 
('Pilates', 'Anna Rossi', '10:00', 'Lunedì, Mercoledì, Venerdì'),
('CrossFit', 'Marco Bianchi', '18:30', 'Martedì, Giovedì, Sabato'),
('Yoga', 'Elisa Verdi', '09:00', 'Lunedì, Mercoledì, Venerdì'),
('Zumba', 'Francesca Neri', '17:00', 'Martedì, Giovedì'),
('Spinning', 'Alessandro Gialli', '20:00', 'Lunedì, Mercoledì, Venerdì');
