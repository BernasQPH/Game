<?php
include 'PHP/config.php'; 

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['email'])) {
    $email = $_POST['email'];

    if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $stmt = $conn->prepare("INSERT INTO newsletter (email) VALUES (?)");
        $stmt->bind_param("s", $email);
        if ($stmt->execute()) {
            echo "Inscrição bem-sucedida!";
        } else {
            echo "Erro ao salvar o email: " . $conn->error;
        }
    } else {
        echo "Email inválido.";
    }
} else {
    echo "Método inválido.";
}

header("Location: index.php");
?>
