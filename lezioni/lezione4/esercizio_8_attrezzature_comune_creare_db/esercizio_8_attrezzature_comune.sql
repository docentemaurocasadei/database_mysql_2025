CREATE TABLE sedi (
    id_sede INT PRIMARY KEY,
    nome VARCHAR(100),
    indirizzo VARCHAR(150)
);

CREATE TABLE categorie (
    id_categoria INT PRIMARY KEY,
    nome VARCHAR(100),
    descrizione TEXT
);

CREATE TABLE attrezzature (
    id_attrezzatura INT PRIMARY KEY,
    nome VARCHAR(100),
    descrizione TEXT,
    data_acquisto DATE,
    id_categoria INT,
    id_sede INT,
    necessita_manutenzione BOOLEAN,
    data_ultima_manutenzione DATE,
    FOREIGN KEY (id_categoria) REFERENCES categorie(id_categoria),
    FOREIGN KEY (id_sede) REFERENCES sedi(id_sede)
);
Popolamento dati (estratto)
INSERT INTO sedi VALUES
(1, 'Scuola Media Bertola', 'Via Roma 12'),
(2, 'Comune di Rimini', 'Piazza Cavour'),
(3, 'Sede Distaccata Nord', 'Via Marecchia');

INSERT INTO categorie VALUES
(1, 'Informatica', 'Computer e dispositivi IT'),
(2, 'Elettrica', 'Impianti e attrezzature elettriche'),
(3, 'Sicurezza', 'Attrezzature di sicurezza');

INSERT INTO attrezzature VALUES
(1, 'PC Aula Informatica', 'Computer per studenti', '2022-03-15', 1, 1, TRUE, '2024-02-10'),
(2, 'Stampante Ufficio', 'Stampante laser', '2021-06-20', 1, 2, TRUE, '2024-01-05'),
(3, 'UPS Server', 'Gruppo di continuità', '2020-09-10', 2, 2, TRUE, '2023-12-01'),
(4, 'Proiettore Aula', 'Videoproiettore', '2023-01-12', 1, 1, FALSE, NULL),
(5, 'Estintore', 'Estintore CO2', '2022-05-30', 3, 3, TRUE, '2024-03-01');

🟡 Mettere sotto manutenzione 3 attrezzature
UPDATE attrezzature
SET data_ultima_manutenzione = CURRENT_DATE
WHERE id_attrezzatura IN (1, 2, 3);

🔴 Dismissione di un’attrezzatura
Opzione A – Cancellazione fisica
DELETE FROM attrezzature
WHERE id_attrezzatura = 4;


(Oppure soft delete con flag dismessa)

🔵 Manutenzioni da effettuare nel prossimo trimestre
SELECT 
    a.nome,
    c.nome AS categoria,
    s.nome AS sede,
    a.data_ultima_manutenzione
FROM attrezzature a
JOIN categorie c ON a.id_categoria = c.id_categoria
JOIN sedi s ON a.id_sede = s.id_sede
WHERE a.necessita_manutenzione = TRUE
  AND a.data_ultima_manutenzione <= DATE_SUB(CURRENT_DATE, INTERVAL 9 MONTH);
