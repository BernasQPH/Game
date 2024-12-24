<?php
include 'config.php'; // Inclui a conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['email'])) {
    $email = $_POST['email'];

    if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
        try {
            $stmt = $pdo->prepare("INSERT INTO newsletter (email) VALUES (:email)");
            $stmt->execute([':email' => $email]);
            echo "Inscrição bem-sucedida!";
        } catch (PDOException $e) {
            echo "Erro ao salvar o email: " . $e->getMessage();
        }
    } else {
        echo "Email inválido.";
    }
} else {
    echo "Método inválido.";
}

header("Location: ../index.php");
?>


