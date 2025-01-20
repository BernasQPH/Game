<?php
session_start();
include('php/config.php'); 

if (!isset($_SESSION['cart'])) {
    $_SESSION['cart'] = [];
}

function buscarProdutos($conn, $query = '', $platform = '', $status = '', $priceMin = null, $priceMax = null) {
    $sql = "SELECT * FROM produto WHERE 1=1"; 
    $params = [];
    $types = '';

    if (!empty($query)) {
        $sql .= " AND LOWER(designation) LIKE ?";
        $params[] = '%' . strtolower($query) . '%';
        $types .= "s";
    }

    if (!empty($platform)) {
        $sql .= " AND platform = ?";
        $params[] = $platform;
        $types .= "s";
    }

    if (!empty($status)) {
        $sql .= " AND status = ?";
        $params[] = $status;
        $types .= "s";
    }

    if (!is_null($priceMin) && $priceMin !== '') {
        $sql .= " AND price >= ?";
        $params[] = $priceMin;
        $types .= "d";
    }

    if (!is_null($priceMax) && $priceMax !== '') {
        $sql .= " AND price <= ?";
        $params[] = $priceMax;
        $types .= "d";
    }

    $stmt = $conn->prepare($sql);
    if (!$stmt) {
        die("Erro na preparação da query: " . $conn->error);
    }

    if (!empty($params)) {
        $stmt->bind_param($types, ...$params);
    }

    $stmt->execute();
    return $stmt->get_result();
}


if (isset($_POST['add_to_cart'])) {
    $product_id = $_POST['product_id'];
    $product_name = $_POST['product_name'];
    $product_price = $_POST['product_price'];

    $existe = array_filter($_SESSION['cart'], fn($p) => $p['id'] == $product_id);

    if (!empty($existe)) {
        echo "<script>alert('Este produto já está no carrinho!');</script>";
    } else {
        $_SESSION['cart'][] = [
            'id' => $product_id,
            'name' => $product_name,
            'price' => $product_price
        ];
        echo "<script>alert('Produto adicionado ao carrinho com sucesso!');</script>";
    }
}



$query = $_GET['query'] ?? '';
$platform = $_GET['platform'] ?? '';
$status = $_GET['status'] ?? '';
$priceMin = !empty($_GET['price_min']) ? (float)$_GET['price_min'] : null;
$priceMax = !empty($_GET['price_max']) ? (float)$_GET['price_max'] : null;


$produtos = buscarProdutos($conn, $query, $platform, $status, $priceMin, $priceMax);
?>

<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pesquisa de Produtos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <link href="css/footer.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }


    </style>
</head>
<body>

    <?php include 'php/navbar.php'; ?>

    <div class="container">
        <form method="GET" class="row g-3 mt-4">
            <div class="col-12 col-md-6 col-lg-4">
                <input type="text" name="query" class="form-control" placeholder="Nome do produto" value="<?= $query ?>">
            </div>
            <div class="col-12 col-md-6 col-lg-2">
                <select name="platform" class="form-select">
                    <option value="">Plataforma</option>
                    <option value="Switch" <?= $platform == 'Switch' ? 'selected' : '' ?>>Switch</option>
                    <option value="PC" <?= $platform == 'PC' ? 'selected' : '' ?>>PC</option>
                    <option value="PlayStation" <?= $platform == 'PlayStation' ? 'selected' : '' ?>>PlayStation</option>
                    <option value="Xbox" <?= $platform == 'Xbox' ? 'selected' : '' ?>>Xbox</option>
                </select>
            </div>
            <div class="col-12 col-md-6 col-lg-2">
                <select name="status" class="form-select">
                    <option value="">Status</option>
                    <option value="Disponível" <?= $status == 'Disponível' ? 'selected' : '' ?>>Disponível</option>
                    <option value="Indisponível" <?= $status == 'Indisponível' ? 'selected' : '' ?>>Indisponível</option>
                </select>
            </div>
            <div class="col-12 col-md-6 col-lg-2">
                <input type="number" name="price_min" class="form-control" placeholder="Preço Mínimo" value="<?= $_GET['price_min'] ?? '' ?>">
            </div>
            <div class="col-12 col-md-6 col-lg-2">
                <input type="number" name="price_max" class="form-control" placeholder="Preço Máximo" value="<?= $_GET['price_max'] ?? '' ?>">
            </div>
            <div class="col-12 text-center">
                <button type="submit" class="btn btn-primary w-100 w-md-auto">Filtrar</button>
            </div>
        </form>


        <div class="container">
    <div class="row">
        <?php while ($produto = $produtos->fetch_assoc()): ?>
        <div class="col-12 col-md-6 col-lg-3">
            <div class="jogo mt-3">
                <a href="showprod.php?id=<?= $produto['id'] ?>"><img class="img-fluid w-100 justify-content-center" src="<?= $produto['image_url'] ?>" /></a>
                <div><?= $produto['designation'] ?></div>
                <div><?= $produto['price'] ?></div>
                <div><?= $produto['platform'] ?></div>
                <div><?= $produto['status'] ?></div>
                <div>                                    
                    <form method="POST" >
                        <input type="hidden" name="product_id" value="<?= $produto['id'] ?>">
                        <input type="hidden" name="product_name" value="<?= $produto['designation'] ?>">
                        <input type="hidden" name="product_price" value="<?= $produto['price'] ?>">
                        <button type="submit" name="add_to_cart" class="btn btn-primary w-100">Adicionar ao Carrinho</button>
                    </form>
                </div>
            </div>
        </div>
        <?php endwhile; ?>
    </div>
</div>


    <?php include 'php/footer.php'; ?>
</body>
</html>
