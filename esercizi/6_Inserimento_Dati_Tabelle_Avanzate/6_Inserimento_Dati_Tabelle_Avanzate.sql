USE gestione_corsi;

INSERT INTO certificazioni (nome, data_certificazione, punteggio_minimo)
VALUES 
    ('Certificazione SQL', '2023-04-15', 70.00),
    ('Certificazione MySQL', '2023-05-20', 75.50),
    ('Certificazione PHP', '2023-06-10', 80.00);
	
	INSERT INTO docenti (nome, cognome, data_assunzione, stipendio)
VALUES 
    ('Giovanni', 'Neri', '2020-01-15', 2500.00),
    ('Sara', 'Gialli', '2021-03-10', 2700.50),
    ('Marco', 'Blu', '2019-07-25', 3000.00);

INSERT INTO corsi_frequentati (corsista_id, corso_id, data_inizio, data_fine, voto_finale)
VALUES 
    (1, 1, '2023-04-01', '2023-04-30', 8.5),
    (1, 2, '2023-05-01', '2023-06-15', 7.0),
    (2, 1, '2023-04-01', '2023-04-30', 9.0),
    (2, 3, '2023-06-01', '2023-06-30', 8.0),
    (3, 2, '2023-05-01', '2023-06-15', 6.5);