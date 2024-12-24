<?php
header('Content-Type: application/json');
include 'config.php';

$query = isset($_GET['query']) ? $_GET['query'] : '';
$platform = isset($_GET['platform']) ? $_GET['platform'] : '';
$status = isset($_GET['status']) ? $_GET['status'] : '';
$priceMin = isset($_GET['price_min']) ? (float)$_GET['price_min'] : null;
$priceMax = isset($_GET['price_max']) ? (float)$_GET['price_max'] : null;


$sql = "SELECT * FROM produto WHERE designation LIKE ?";
$params = ["%" . $query . "%"];
$types = "s";

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

if (!is_null($priceMin)) {
    $sql .= " AND price >= ?";
    $params[] = $priceMin;
    $types .= "d";
}

if (!is_null($priceMax)) {
    $sql .= " AND price <= ?";
    $params[] = $priceMax;
    $types .= "d";
}


$stmt = $conn->prepare($sql);
$stmt->bind_param($types, ...$params);
$stmt->execute();

$result = $stmt->get_result();
$produtos = [];


while ($row = $result->fetch_assoc()) {
    $produtos[] = $row;
}


echo json_encode($produtos);


$stmt->close();
$conn->close();
?>
