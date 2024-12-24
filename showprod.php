<?php
require 'PHP/config.php'; 

if (!isset($_GET['id']) || empty($_GET['id'])) {
    echo "<h1>Produto não encontrado.</h1>";
    exit;
}

$id = intval($_GET['id']);


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
            width: 480px; 
            height: 500px; 
            object-fit: cover; 
            border-radius: 5px; 
            display: block;
            padding-right: 2px;
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
                    data-id="<?php echo $produto['id']; ?>" 
                    data-name="<?php echo htmlspecialchars($produto['designation']); ?>" 
                    data-price="<?php echo $produto['price']; ?>">
                    Adicionar ao Carrinho
                </button>
            <?php else: ?>
                <p class="text-danger">Produto esgotado</p>
            <?php endif; ?>
            <div class="mt-4">
                <a href="checkout.html" class="btn btn-success">Ir para o Checkout</a>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>


<script>
    document.querySelector('.add-to-cart').addEventListener('click', function () {
        const product = {
            id: this.getAttribute('data-id'),
            name: this.getAttribute('data-name'),
            price: parseFloat(this.getAttribute('data-price'))
        };

       
        const cart = JSON.parse(localStorage.getItem('cart')) || [];
        cart.push(product);

       
        localStorage.setItem('cart', JSON.stringify(cart));
        alert('Produto adicionado ao carrinho!');
    });
</script>
<?php include 'PHP/footer.php'; ?>
</body>
</html>
