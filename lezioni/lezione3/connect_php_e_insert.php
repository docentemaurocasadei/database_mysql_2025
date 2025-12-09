<?php
    $db_host = 'localhost';
    $db_name = 'corso_gestione_aula';
    $db_user = 'root';
    $db_pass = '';      
    try {
        $pdo = new PDO("mysql:host=$db_host;dbname=$db_name;charset=utf8", $db_user, $db_pass);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "Connessione al database avvenuta con successo!";
    } catch (PDOException $e) {
        echo "Errore di connessione: " . $e->getMessage();
    }
    // Esempio di inserimento dati
    try {   
        $sql = "INSERT INTO moduli (nome, numero_ore, unita_formativa_id) VALUES (:nome, :numero_ore, :unita_formativa_id)";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
            ':nome' => 'Programmazione Web',
            ':numero_ore' => 40,
            ':unita_formativa_id' => 1
        ]);
        echo "Dati inseriti con successo!";
    } catch (PDOException $e) {
        echo "Errore nell'inserimento dei dati: " . $e->getMessage();
    }
?>