USE gestione_corsi;

-- Inserimento di almeno 5 corsisti nella tabella Corsisti
INSERT INTO Corsisti (nome, cognome, data_nascita, email) VALUES
('Mario', 'Rossi', '1985-06-15', 'mario.rossi@example.com'),
('Luca', 'Bianchi', '1990-08-22', 'luca.bianchi@example.com'),
('Giulia', 'Verdi', '1992-11-30', 'giulia.verdi@example.com'),
('Anna', 'Neri', '1988-03-12', 'anna.neri@example.com'),
('Marco', 'Gialli', '1995-01-25', 'marco.gialli@example.com');

-- Inserimento di almeno 3 corsi nella tabella Corsi
INSERT INTO Corsi (nome, descrizione, durata_ore, costo) VALUES
('Corso di Programmazione', 'Introduzione alla programmazione con Python', 40, 300.00),
('Corso di Web Design', 'Creazione di siti web con HTML, CSS e JavaScript', 30, 250.00),
('Corso di Data Science', 'Analisi dei dati con Python e Ruby', 50, 400.00);

-- Inserimento di almeno 2 aule nella tabella Aule
INSERT INTO Aule (nome, capienza) VALUES
('Aula Magna', 100),
('Aula Informatica', 30);