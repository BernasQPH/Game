<?php
include 'config.php'; 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $mensagem = $_POST['mensagem'];

    $stmt = $conn->prepare("INSERT INTO contact_messages (nome, email, mensagem) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $nome, $email, $mensagem);
    $stmt->execute();

    echo "Mensagem enviada com sucesso!";
} else {
    echo "Método inválido.";
}

header("Location: ../index.php");
?>
