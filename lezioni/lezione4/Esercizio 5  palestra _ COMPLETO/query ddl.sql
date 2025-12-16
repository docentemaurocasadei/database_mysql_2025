CREATE DATABASE palestra;
USE palestra;
CREATE TABLE clienti (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cognome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    telefono VARCHAR(15),
    data_iscrizione DATE NOT NULL
);
CREATE TABLE abbonamenti (
    abbonamento_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    durata_mesi INT NOT NULL,
    prezzo DECIMAL(6,2) NOT NULL
);
CREATE TABLE iscrizioni (
    iscrizione_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    abbonamento_id INT,
    data_inizio DATE NOT NULL,
    data_fine DATE NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clienti(cliente_id),
    FOREIGN KEY (abbonamento_id) REFERENCES abbonamenti(abbonamento_id)
);
CREATE TABLE corsi (
    corso_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    istruttore VARCHAR(100) NOT NULL,
    orario TIME NOT NULL,
    giorni_settimana VARCHAR(50) NOT NULL
);
