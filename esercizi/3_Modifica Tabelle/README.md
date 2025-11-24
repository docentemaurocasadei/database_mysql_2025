### Esercizio 2: Modifica di tabelle in un database

# Obiettivo
L'obiettivo di questa esercitazione è la modifica di una tabella, per l'aggiunta di colonne aggiuntive

# Requisiti
1. Assicurati di avere un database MySQL in esecuzione e accessibile.
2. Assicurati di aver creato il database `gestione_corsi` come specificato nell'esercizio 1
3. Assicurati di aver inserito le tabelle come specificato nell'esercizio 2

# Istruzioni
Scrivere un file SQL che:
1. Modifica la tabella 'corsisti' aggiungendo il seguente campo:
    - telefono (massimo 25 caratteri)
2. Aggiunge la chiave unica nella tabella 'corsisti' sul campo 'email'
3. Modifica la tabella 'corsi' aggiungendo le seguenti colonne:
    - costo (decimale 8 interi e 2 cifre decimali, obbligatorio)
    - data_inizio (data, obbligatorio)
    - data_fine (data)
4. Modifica la tabella 'aule' aggiungendo il seguente campo:
    - numero (massimo 3 caratteri, obbligatorio)
