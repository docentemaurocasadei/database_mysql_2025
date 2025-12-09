CREATE DATABASE corso_ecommerce2;

USE corso_ecommerce2;

CREATE TABLE CLIENTI (
    ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Telefono VARCHAR(20)
);

CREATE TABLE PRODOTTI (
    ID_Prodotto INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Prezzo DECIMAL(10, 2) NOT NULL,
    Disponibilità INT DEFAULT 0
);

CREATE TABLE ORDINE (
    ID_Ordine INT PRIMARY KEY AUTO_INCREMENT,
    Data_Ordine DATE NOT NULL,
    ID_Cliente INT NOT NULL,
    Totale DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES CLIENTI(ID_Cliente)
);
INSERT INTO CLIENTI (Nome, Email, Telefono) VALUES
('Mario Rossi', 'mario@email.com', '0123456789'),
('Anna Bianchi', 'anna@email.com', '0987654321');

INSERT INTO PRODOTTI (Nome, Prezzo, Disponibilità) VALUES
('Laptop', 899.99, 10),
('Smartphone', 499.99, 25);

INSERT INTO ORDINE (Data_Ordine, ID_Cliente, Totale) VALUES
('2024-11-01', 1, 899.99);
