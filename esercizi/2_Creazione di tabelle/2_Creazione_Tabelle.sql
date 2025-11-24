use gestione_corsi;

CREATE TABLE
  Corsisti (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    data_nascita DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
  );

CREATE TABLE
  Corsi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descrizione TEXT,
    durata_ore INT NOT NULL,
  );

CREATE TABLE
  Aule (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    capienza INT NOT NULL
  );