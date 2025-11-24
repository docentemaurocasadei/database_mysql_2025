### Esercizio 2: Creazione di tabelle in un database

# Obiettivo
L'obiettivo di questa esercitazione è la creazione di tabelle semplici all'interno di un database

# Requisiti
1. Assicurati di avere un database MySQL in esecuzione e accessibile.
2. Assicurati di aver creato il database `gestione_corsi` come specificato nell'esercizio 1

# Istruzioni
Scrivere un file SQL che:
1. Crea una tabella 'corsisti' con i seguenti campi:
    - id (int, auto-incremento, chiave primaria),
    - nome (massimo 50 caratteri, obbligatorio),
    - cognome (massimo 50 caratteri, obbligatorio),
    - data_nascita (data, obbligatorio),
    - email (massimo 150 caratteri, obbligatorio)
2. Crea una tabella 'corsi' con i seguenti campi:
    - id (int, auto-incremento, chiave primaria),
    - nome (massimo 100 caratteri, obbligatorio),
    - descrizione (testo),
    - durata_ore (int, obbligatorio),
3. Crea una tabella 'aule' con i seguenti campi:
    - id (int, auto-incremento, chiave primaria),
    - nome (massimo 50 caratteri, obbligatorio),
    - capienza (int, obbligatorio)
