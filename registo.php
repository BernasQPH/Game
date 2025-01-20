<?php
require 'php/config.php';

// Verifique se a conexão está sendo estabelecida corretamente
if (!$conn) {
    die("Erro de conexão: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $primeiro_nome = $_POST['primeiro_nome'];
    $ultimo_nome =$_POST['ultimo_nome'];
    $email = $_POST['email'];
    $senha = password_hash($_POST['senha'], PASSWORD_DEFAULT);

    $sql = "INSERT INTO utilizadores (primeiro_nome, ultimo_nome, email, senha) VALUES (?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssss", $primeiro_nome, $ultimo_nome, $email, $senha);
    
    if ($stmt->execute()) {
        header("Location: login.php");
        exit;
    } else {
        echo "Erro no registo! Tente novamente.";
    }

    header("Location: ../index.php");
}
?>

<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registo</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body>
    <?php include 'php/navbar.php'; ?>
    <div class="container mt-5">
        <h2>Registo</h2>
        <form method="POST">
            <div class="mb-3">
                <label for="primeiro_nome" class="form-label">Primeiro Nome</label>
                <input type="text" class="form-control" id="primeiro_nome" name="primeiro_nome" required>
            </div>
            <div class="mb-3">
                <label for="ultimo_nome" class="form-label">Último Nome</label>
                <input type="text" class="form-control" id="ultimo_nome" name="ultimo_nome" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="senha" class="form-label">Senha</label>
                <input type="password" class="form-control" id="senha" name="senha" required>
            </div>
            <button type="submit" class="btn btn-primary">Registar</button>
        </form>
    </div>
    <?php include 'php/footer.php'; ?>
</body>
</html>
