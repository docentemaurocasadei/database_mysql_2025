USE gestione_corsi;

-- Calcola il costo per ora di ciascun corso (costo diviso per durata_ore)
SELECT id, nome, durata_ore, costo, (costo / durata_ore) AS costo_per_ora 
FROM corsi;