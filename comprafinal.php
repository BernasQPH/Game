<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Game | Compra Finalizada</title>
    
    <link href="CSS/footer.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<?php include 'PHP/navbar.php'; ?>
    <div class="container mt-5 text-center">
        <div class="alert alert-success" role="alert">
            <h1 class="display-4">Compra Finalizada com Sucesso!</h1>
            <p class="lead">Obrigado por adquirir na .GAME!</p>
        </div>
        <p class="mt-4">A sua chave de ativação foi enviada para o seu endereço de correio eletrónico.</p>
        <p>Verifique a sua caixa de entrada, incluindo a pasta de spam.</p>

        <p class="mt-4">Caso tenha alguma dúvida ou problema, por favor <a href="contactus.php" class="text-primary">contacte-nos</a>.</p>

        <a href="index.php" class="btn btn-primary mt-4">Voltar à Página Inicial</a>
    </div>

    <?php include 'PHP/footer.php'; ?>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>