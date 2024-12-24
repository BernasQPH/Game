<?php
require_once 'config.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Receber os dados do frontend
    $data = json_decode(file_get_contents('php://input'), true);
    $produtoId = $data['produto_id'];

    // Consulta ao banco de dados para verificar disponibilidade
    $query = "SELECT estoque FROM produtos WHERE id = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("i", $produtoId);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $produto = $result->fetch_assoc();
        if ($produto['estoque'] > 0) {
            // Produto disponível
            echo json_encode(['success' => true, 'message' => 'Produto adicionado ao carrinho.']);
        } else {
            // Produto esgotado
            echo json_encode(['success' => false, 'message' => 'Este produto está esgotado.']);
        }
    } else {
        // Produto não encontrado
        echo json_encode(['success' => false, 'message' => 'Produto não encontrado.']);
    }
    $stmt->close();
    $conn->close();
}
?>
