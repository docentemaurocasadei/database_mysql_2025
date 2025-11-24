use gestione_corsi;

CREATE TABLE
  certificazioni (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_certificazione DATE NOT NULL,
    punteggio_minimo DECIMAL(5, 2) NOT NULL
  );

CREATE TABLE
  docenti (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    data_assunzione DATE NOT NULL,
    stipendio DECIMAL(8, 2) NOT NULL
  );

CREATE TABLE
  corsi_frequentati (
    id INT AUTO_INCREMENT PRIMARY KEY,
    corsista_id INT NOT NULL,
    corso_id INT NOT NULL,
    data_inizio DATE NOT NULL,
    data_fine DATE,
    voto_finale DECIMAL(4, 2),
    CONSTRAINT fk_corsista FOREIGN KEY (corsista_id) REFERENCES corsisti (id) ON DELETE CASCADE,
    CONSTRAINT fk_corso FOREIGN KEY (corso_id) REFERENCES corsi (id) ON DELETE CASCADE,
    CONSTRAINT uq_corso_frequentato UNIQUE (corsista_id, corso_id)
  );