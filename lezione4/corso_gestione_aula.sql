-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Dic 16, 2025 alle 09:42
-- Versione del server: 8.2.0
-- Versione PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corso_gestione_aula`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `corsisti`
--

CREATE TABLE `corsisti` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `codice_fiscale` char(16) DEFAULT NULL,
  `data_di_nascita` date DEFAULT NULL,
  `email` tinytext,
  `telefono` varchar(20) DEFAULT NULL,
  `indirizzo_residenza` varchar(50) DEFAULT NULL,
  `localita_residenza` varchar(80) DEFAULT NULL,
  `provincia_residenza` varchar(2) DEFAULT NULL,
  `cap_residenza` varchar(5) DEFAULT NULL,
  `genere` enum('M','F','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dump dei dati per la tabella `corsisti`
--

INSERT INTO `corsisti` (`id`, `nome`, `cognome`, `codice_fiscale`, `data_di_nascita`, `email`, `telefono`, `indirizzo_residenza`, `localita_residenza`, `provincia_residenza`, `cap_residenza`, `genere`) VALUES
(1, 'Laura', 'Esposito', 'ESPLRA85A01F205H', '1985-01-01', 'laura.esposito@mail.it', '3331112233', 'Via Roma 10', 'Milano', 'MI', '20121', 'F'),
(2, 'Marco', 'Rizzo', 'RZZMRC78H23A794T', '1978-08-23', 'marco.rizzo@mail.it', '3334445566', 'Piazza Italia 5', 'Torino', 'TO', '10123', 'M'),
(3, 'Giulia', 'Conti', 'CNTGLI95D15H501K', '1995-04-15', 'giulia.conti@mail.it', '3337778899', 'Corso Francia 30', 'Napoli', 'NA', '80121', 'F'),
(4, 'Andrea', 'Gallo', 'GLLNDR80T01B157A', '1980-12-01', 'andrea.gallo@mail.it', '3330001122', 'Viale Trieste 8', 'Bari', 'BA', '70121', 'M'),
(5, 'Sara', 'Ferrari', 'FRRSRA98R10L219S', '1998-10-10', 'sara.ferrari@mail.it', '3333334455', 'Via Milano 22', 'Roma', 'RM', '00100', 'F'),
(7, 'Carlo', 'Severi', 'SVRCRL', '2000-02-05', 'carloserveri@gmail.com', NULL, 'via Veneto, 8', 'Roma', 'RM', '00201', 'M');

-- --------------------------------------------------------

--
-- Struttura della tabella `iscrizioni`
--

CREATE TABLE `iscrizioni` (
  `corsista_id` int NOT NULL,
  `modulo_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dump dei dati per la tabella `iscrizioni`
--

INSERT INTO `iscrizioni` (`corsista_id`, `modulo_id`) VALUES
(1, 1),
(2, 1),
(6, 1),
(2, 2),
(4, 2),
(1, 3),
(5, 3),
(3, 4),
(5, 4),
(4, 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `moduli`
--

CREATE TABLE `moduli` (
  `id` int NOT NULL,
  `unita_formativa_id` int NOT NULL,
  `nome` varchar(80) NOT NULL,
  `numero_ore` smallint DEFAULT NULL,
  `costo_orario` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dump dei dati per la tabella `moduli`
--

INSERT INTO `moduli` (`id`, `unita_formativa_id`, `nome`, `numero_ore`, `costo_orario`) VALUES
(1, 1, 'Introduzione a SQL', 20, 5.00),
(2, 1, 'Database Avanzati', 35, 7.00),
(3, 2, 'Programmazione Web Base', 40, 4.50),
(4, 3, 'Gestione Progetto', 15, 8.00),
(5, 2, 'Sviluppo Frontend', 50, 6.50);

-- --------------------------------------------------------

--
-- Struttura della tabella `province`
--

CREATE TABLE `province` (
  `id` int NOT NULL COMMENT 'è la chiave primaria',
  `nome` varchar(45) DEFAULT NULL,
  `sigla` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struttura della tabella `unita_formative`
--

CREATE TABLE `unita_formative` (
  `id` int NOT NULL,
  `nome` varchar(80) DEFAULT NULL,
  `numero_ore` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dump dei dati per la tabella `unita_formative`
--

INSERT INTO `unita_formative` (`id`, `nome`, `numero_ore`) VALUES
(1, 'UF1', 100),
(2, 'UF2', 80),
(3, 'UF3', 110),
(4, 'UF4', 115);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `corsisti`
--
ALTER TABLE `corsisti`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codice_fiscale_UNIQUE` (`codice_fiscale`);

--
-- Indici per le tabelle `iscrizioni`
--
ALTER TABLE `iscrizioni`
  ADD PRIMARY KEY (`corsista_id`,`modulo_id`),
  ADD KEY `fk_corsisti_has_moduli_moduli1_idx` (`modulo_id`),
  ADD KEY `fk_corsisti_has_moduli_corsisti1_idx` (`corsista_id`);

--
-- Indici per le tabelle `moduli`
--
ALTER TABLE `moduli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_moduli_unita_formative_idx` (`unita_formativa_id`);

--
-- Indici per le tabelle `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sigla_province_unique` (`sigla`),
  ADD KEY `nome_province_index` (`nome`);

--
-- Indici per le tabelle `unita_formative`
--
ALTER TABLE `unita_formative`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `corsisti`
--
ALTER TABLE `corsisti`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `moduli`
--
ALTER TABLE `moduli`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `province`
--
ALTER TABLE `province`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'è la chiave primaria';

--
-- AUTO_INCREMENT per la tabella `unita_formative`
--
ALTER TABLE `unita_formative`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `iscrizioni`
--
ALTER TABLE `iscrizioni`
  ADD CONSTRAINT `fk_corsisti_has_moduli_corsisti1` FOREIGN KEY (`corsista_id`) REFERENCES `corsisti` (`id`),
  ADD CONSTRAINT `fk_corsisti_has_moduli_moduli1` FOREIGN KEY (`modulo_id`) REFERENCES `moduli` (`id`);

--
-- Limiti per la tabella `moduli`
--
ALTER TABLE `moduli`
  ADD CONSTRAINT `fk_moduli_unita_formative` FOREIGN KEY (`unita_formativa_id`) REFERENCES `unita_formative` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
