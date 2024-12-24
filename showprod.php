<?php
require 'PHP/config.php'; // Certifique-se de incluir seu arquivo de configuração para conexão ao banco de dados

if (!isset($_GET['id']) || empty($_GET['id'])) {
    echo "<h1>Produto não encontrado.</h1>";
    exit;
}

$id = intval($_GET['id']);

// Consultar o banco de dados para obter os detalhes do produto
$sql = "SELECT * FROM produto WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 0) {
    echo "<h1>Produto não encontrado.</h1>";
    exit;
}

$produto = $result->fetch_assoc();
?>
<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo htmlspecialchars($produto['nome']); ?></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .produto-container {
            margin-top: 50px;
        }
        .produto-imagem img {
            width: 480px; /* Define largura fixa */
            height: 500px; /* Define altura fixa */
            object-fit: cover; /* Ajusta a imagem ao tamanho sem distorcer */
            border-radius: 5px; /* Cantos arredondados para estética */
            display: block;
            padding-right: 2px:
        }
        .produto-detalhes {
            margin-top: 20px;
        }
    </style>

<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
<link href="../CSS/footer.css" rel="stylesheet">

</head>
<body>
<?php include 'PHP/navbar.php'; ?>
<div class="container produto-container">
    <div class="row">
        <div class="col-md-6 produto-imagem">
            <img src="<?php echo htmlspecialchars($produto['image_url']); ?>" alt="<?php echo htmlspecialchars($produto['designation']); ?>">
        </div>
        <div class="col-md-6 produto-detalhes">
            <h1><?php echo htmlspecialchars($produto['designation']); ?></h1>
            <p><strong>Preço:</strong> €<?php echo number_format($produto['price'], 2); ?></p>
            <p><strong>Descrição:</strong></p>
            <p><?php echo nl2br(htmlspecialchars($produto['bdescription'])); ?></p>
            <p><strong>Status:</strong> <?php echo htmlspecialchars($produto['status']); ?></p>

            <?php if ($produto['status'] !== 'Esgotado'): ?>    
                <button 
                    class="btn btn-primary add-to-cart" 
                    data-id="${produto.id}" 
                    data-name="${produto.designation}" 
                    data-price="${produto.price}">
                    Adicionar ao Carrinho
                </button>
                
            <?php else: ?>
                <p class="text-danger">Produto esgotado</p>
            <?php endif; ?>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<?php include 'PHP/footer.php'; ?>
</body>
</html>