<?php
require_once 'PHP/config.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
   
    $data = json_decode(file_get_contents('php://input'), true);
    $produtoId = $data['produto_id'];

    
    $query = "SELECT stock FROM produtos WHERE id = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("i", $produtoId);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $produto = $result->fetch_assoc();
        if ($produto['stock'] > 0) {
            
            echo json_encode(['success' => true, 'message' => 'Produto adicionado ao carrinho.']);
        } else {
            
            echo json_encode(['success' => false, 'message' => 'Este produto está esgotado.']);
        }
    } else {
      
        echo json_encode(['success' => false, 'message' => 'Produto não encontrado.']);
    }
    $stmt->close();
    $conn->close();
}
?>