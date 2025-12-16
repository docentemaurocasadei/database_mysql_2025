Descrizione Dettagliata del Database
Il database riguarda una palestra e contiene informazioni sui clienti, abbonamenti, iscrizioni e corsi. Di seguito, la descrizione dettagliata delle tabelle, dei campi e delle relazioni, con il tipo di cardinalità.

1. Tabella clienti
Questa tabella contiene informazioni sui clienti della palestra.

cliente_id (INT, PK, AUTO_INCREMENT): Identificatore unico del cliente.
nome (VARCHAR(50)): Nome del cliente.
cognome (VARCHAR(50)): Cognome del cliente.
email (VARCHAR(100)): Indirizzo email del cliente.
telefono (VARCHAR(15)): Numero di telefono del cliente.


Relazioni:
Un cliente può avere molte iscrizioni.
Un cliente è associato a una o più iscrizioni in base agli abbonamenti acquistati.

Cardinalità:
Uno a Molti (1:N) con la tabella iscrizioni.


2. Tabella abbonamenti
Questa tabella descrive i vari tipi di abbonamento offerti dalla palestra.

abbonamento_id (INT, PK, AUTO_INCREMENT): Identificatore unico dell'abbonamento.
nome (VARCHAR(50)): Nome dell'abbonamento (es. Mensile, Trimestrale, Annuale, ecc.).
durata_mesi (INT): Durata dell'abbonamento in mesi.
prezzo (DECIMAL(10, 2)): Prezzo dell'abbonamento.

Relazioni:
Un abbonamento può essere associato a molte iscrizioni.
Un abbonamento è legato a una o più iscrizioni, a seconda del numero di clienti che lo sottoscrivono.

Cardinalità:
Uno a Molti (1:N) con la tabella iscrizioni.


3. Tabella iscrizioni
Questa tabella registra ogni iscrizione di un cliente a un abbonamento specifico, con le relative date di inizio e fine.

iscrizione_id (INT, PK, AUTO_INCREMENT): Identificatore unico dell'iscrizione.
cliente_id (INT, FK): Chiave esterna che fa riferimento al cliente_id della tabella clienti.
abbonamento_id (INT, FK): Chiave esterna che fa riferimento all'abbonamento_id della tabella abbonamenti.
data_inizio (DATE): Data di inizio dell'iscrizione all'abbonamento.
data_fine (DATE): Data di fine dell'iscrizione all'abbonamento.

Relazioni:
Ogni iscrizione è associata a un singolo cliente e a un singolo abbonamento.
Un cliente può avere più iscrizioni, quindi la relazione è molti a uno con la tabella clienti.
Un abbonamento può essere sottoscritto da molti clienti, quindi la relazione è molti a uno con la tabella abbonamenti.

Cardinalità:
Molti a Uno (N:1) con la tabella clienti.
Molti a Uno (N:1) con la tabella abbonamenti.


4. Tabella corsi
Questa tabella descrive i vari corsi disponibili presso la palestra.

corso_id (INT, PK, AUTO_INCREMENT): Identificatore unico del corso.
nome (VARCHAR(100)): Nome del corso (es. Pilates, Yoga, CrossFit, ecc.).
istruttore (VARCHAR(100)): Nome dell'istruttore che tiene il corso.
orario (TIME): Orario di inizio del corso.
giorni_settimana (VARCHAR(100)): Giorni della settimana in cui il corso è disponibile (es. Lunedì, Mercoledì, Venerdì).

Relazioni:
nessuna

--- POPOLARE IL DATABASE:
Inserire almeno 10 clienti, 5 abbonamenti, 5 corsi e 15 iscrizioni (alcune delle quali scadute):
DETTAGLIO:
Clienti: 10 clienti inseriti, con diverse date di iscrizione per coprire un ampio arco temporale.
Abbonamenti: 5 abbonamenti diversi, che coprono diverse durate e prezzi (Mensile, Trimestrale, Annuale, Semestrale e Decennale).
Iscrizioni: 15 iscrizioni, alcune delle quali già scadute (in base alla data di oggi, 05/05/2025).
Corsi: 5 corsi disponibili con orari e giorni specifici per ogni corso.

Richieste:
Estrarre tutti i clienti iscritti alla palestra.

Visualizzare tutti gli abbonamenti disponibili.

Mostrare tutti i clienti con il tipo di abbonamento scelto.

Mostrare i clienti con abbonamento ancora valido oggi.

Contare quanti clienti hanno un abbonamento attivo.

Estrarre tutti i corsi disponibili con i rispettivi istruttori.

Mostrare quanti clienti hanno scelto ogni tipo di abbonamento.

Estrarre i clienti ordinati per data di iscrizione (dal più recente al meno recente).

Visualizzare i corsi disponibili nei giorni Lunedì e Mercoledì.

Estrarre i clienti che hanno scelto un abbonamento annuale.

Challenge Extra: Rinnovo automatico di un abbonamento.


