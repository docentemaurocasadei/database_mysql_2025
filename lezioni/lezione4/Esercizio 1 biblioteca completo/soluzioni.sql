CREATE TABLE libri (
    id_libro INT PRIMARY KEY,
    titolo VARCHAR(150),
    autore VARCHAR(100),
    genere VARCHAR(50),
    anno_pubblicazione INT
);

CREATE TABLE utenti (
    id_utente INT PRIMARY KEY,
    nome VARCHAR(50),
    cognome VARCHAR(50),
    email VARCHAR(100),
    telefono VARCHAR(20)
);

CREATE TABLE prestiti (
    id_prestito INT PRIMARY KEY,
    id_libro INT,
    id_utente INT,
    data_prestito DATE,
    data_restituzione_prevista DATE,
    data_restituzione_effettiva DATE,
    FOREIGN KEY (id_libro) REFERENCES libri(id_libro),
    FOREIGN KEY (id_utente) REFERENCES utenti(id_utente)
);

Punto 1:
ESERCIZIO 1 – SISTEMA DI GESTIONE BIBLIOTECA
✅ Codice SQL completo diviso per punti
🟢 Punto 1 – Insert e popolazione dei dati
📘 Inserimento LIBRI (10 record)
INSERT INTO libri (id_libro, titolo, autore, genere, anno_pubblicazione) VALUES
(1, 'Il nome della rosa', 'Umberto Eco', 'Giallo', 1980),
(2, '1984', 'George Orwell', 'Distopico', 1949),
(3, 'Il signore degli anelli', 'J.R.R. Tolkien', 'Fantasy', 1954),
(4, 'Il piccolo principe', 'Antoine de Saint-Exupéry', 'Favola', 1943),
(5, 'Harry Potter e la pietra filosofale', 'J.K. Rowling', 'Fantasy', 1997),
(6, 'Fahrenheit 451', 'Ray Bradbury', 'Fantascienza', 1953),
(7, 'Il codice Da Vinci', 'Dan Brown', 'Thriller', 2003),
(8, 'Orgoglio e pregiudizio', 'Jane Austen', 'Romanzo', 1813),
(9, 'Moby Dick', 'Herman Melville', 'Avventura', 1851),
(10, 'La fattoria degli animali', 'George Orwell', 'Satira', 1945);
Inserimento UTENTI (5 record)
INSERT INTO utenti (id_utente, nome, cognome, email, telefono) VALUES
(1, 'Mario', 'Rossi', 'mario.rossi@email.it', '3331112222'),
(2, 'Laura', 'Bianchi', 'laura.bianchi@email.it', '3332223333'),
(3, 'Giulia', 'Verdi', 'giulia.verdi@email.it', '3334445555'),
(4, 'Luca', 'Neri', 'luca.neri@email.it', '3336667777'),
(5, 'Anna', 'Gallo', 'anna.gallo@email.it', '3338889999');
Inserimento PRESTITI (5 record)
INSERT INTO prestiti (
    id_prestito,
    id_libro,
    id_utente,
    data_prestito,
    data_restituzione_prevista,
    data_restituzione_effettiva
) VALUES
(1, 1, 1, '2024-01-10', '2024-01-30', '2024-01-28'),
(2, 2, 2, '2024-02-01', '2024-02-20', NULL),
(3, 3, 3, '2024-01-15', '2024-02-05', '2024-02-03'),
(4, 4, 1, '2024-03-01', '2024-03-20', NULL),
(5, 5, 4, '2024-01-05', '2024-01-25', '2024-01-24');

---

Punto 2 – Modifica dei dati di un utente
UPDATE utenti
SET email = 'laura.bianchi@nuovamail.it',
    telefono = '3339990000'
WHERE id_utente = 2;

🔴 Punto 3 – Cancellazione utente per GDPR (anonimizzazione)
UPDATE utenti
SET nome = 'ANONIMO',
    cognome = 'ANONIMO',
    email = NULL,
    telefono = NULL
WHERE id_utente = 3;

🔵 Punto 4 – Utente che ha attualmente in prestito un libro (ricerca per titolo)
SELECT 
    u.nome,
    u.cognome,
    l.titolo,
    p.data_prestito
FROM prestiti p
JOIN utenti u ON p.id_utente = u.id_utente
JOIN libri l ON p.id_libro = l.id_libro
WHERE l.titolo = '1984'
  AND p.data_restituzione_effettiva IS NULL;

🟣 Punto 5 – Elenco degli utenti che hanno letto un libro (ricerca per titolo)
SELECT DISTINCT
    u.nome,
    u.cognome,
    l.titolo
FROM prestiti p
JOIN utenti u ON p.id_utente = u.id_utente
JOIN libri l ON p.id_libro = l.id_libro
WHERE l.titolo = 'Il nome della rosa'
  AND p.data_restituzione_effettiva IS NOT NULL;

✅ Riepilogo didattico finale
Punto	Operazione SQL
1	INSERT
2	UPDATE
3	UPDATE (GDPR)
4	SELECT con prestito attivo
5	SELECT con prestiti conclusi    