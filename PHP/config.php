<?php
$host = "localhost";
$user = "web";
$password = "web";
$dbname = "grupo101";

$conn = new mysqli($host, $user, $password, $dbname);

if ($conn->connect_error) {
    die("Erro de conexão: " . $conn->connect_error);
}
?>