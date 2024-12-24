<?php
include 'config.php';

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// Debug temporário para verificar a sessão
// Remova esta linha depois de verificar que $_SESSION está funcionando

?>
<nav class="navbar navbar-expand-lg  bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.php"><i class="bi bi-controller"></i> GAME</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item"><a class="nav-link" href="../aboutus.php">Sobre Nós</a></li>
                <li class="nav-item"><a class="nav-link" href="../Contactus.php">Contactos</a></li>
                <li class="nav-item"><a class="nav-link" href="../search.php">Produtos</a></li>
            </ul>
            <ul class="navbar-nav">
                <?php if (isset($_SESSION['user_id'])): ?>
                    <!-- AQUIII -->
                    <a class="nav-link">Bem-vindo, <?php echo htmlspecialchars($_SESSION['user_name']); ?></a>
                    <li class="nav-item"><a class="nav-link" href="../logout.php">Logout</a></li>
                <?php else: ?>
                    <!-- Mostrar Login e Registo se a sessão não estiver ativa -->
                    <li class="nav-item"><a class="nav-link" href="registo.php">Registar</a></li>
                    <li class="nav-item"><a class="nav-link" href="login.php">Login</a></li>
                <?php endif; ?>
            </ul>
        </div>
    </div>
</nav>
