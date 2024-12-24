<?php
header('Content-Type: application/json');
$data = json_decode(file_get_contents('php://input'), true);

if (!$data || !is_array($data)) {
    echo json_encode(['success' => false, 'message' => 'Dados inválidos.']);
    exit;
}

echo json_encode(['success' => true, 'message' => 'Compra finalizada com sucesso!']);
?>
