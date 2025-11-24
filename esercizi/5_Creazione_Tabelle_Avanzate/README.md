### Esercizio 5: Creazione di nuove tabelle avanzate in un database

# Obiettivo
L'obiettivo di questa esercitazione è la creazione di nuove tabelle più avanzate nel database `gestione_corsi`.

# Requisiti
1. Assicurati di avere un database MySQL in esecuzione e accessibile.
2. Assicurati di aver creato il database `gestione_corsi` come specificato nell'esercizio 1.
3. Assicurati di aver inserito le tabelle come specificato negli esercizi precedenti.

# Istruzioni
Scrivere un file SQL che:
1. Crea la tabella `certificazioni` con i seguenti campi:
    - id (intero, chiave primaria, auto-incrementante)
    - nome (massimo 100 caratteri, obbligatorio)
    - data_certificazione (data, obbligatorio)
    - punteggio_minimo (decimale con precisione a 2 cifre, obbligatorio)
2. Crea la tabella `docenti` con i seguenti campi:
    - id (intero, chiave primaria, auto-incrementante)
    - nome (massimo 50 caratteri, obbligatorio)
    - cognome (massimo 50 caratteri, obbligatorio)
    - data_assunzione (data, obbligatorio)
    - stipendio (decimale con precisione a 2 cifre, obbligatorio)
3. Crea la tabella `corsi_frequentati` con i seguenti campi:
    - id (intero, chiave primaria, auto-incrementante)
    - corsista_id (intero, obbligatorio, chiave esterna che fa riferimento alla tabella `corsisti`, con eliminazione a cascata)
    - corso_id (intero, obbligatorio, chiave esterna che fa riferimento alla tabella `corsi`, con eliminazione a cascata)
    - data_inizio (data, obbligatorio)
    - data_fine (data)
    - voto_finale (decimale con precisione a 2 cifre)
    - vincolo di unicità sui campi `corsista_id` e `corso_id`