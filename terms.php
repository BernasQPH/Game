<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Políticas e Termos - .GAME</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <link href="CSS/footer.css" rel="stylesheet">
</head>
<body>
    <?php include 'PHP/navbar.php'; ?>
    <div class="container mt-5">
        <div class="text-center mb-4">
            <h1>Políticas e Termos</h1>
            <p class="lead">Conheça os nossos termos e políticas para uma melhor experiência.</p>
        </div>

        <div class="accordion" id="policiesAccordion">
            <div class="accordion-item" id="termos">
                <h2 class="accordion-header" id="headingTerms">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTerms" aria-expanded="true" aria-controls="collapseTerms">
                        Termos e Condições
                    </button>
                </h2>
                <div id="collapseTerms" class="accordion-collapse collapse show" aria-labelledby="headingTerms" data-bs-parent="#policiesAccordion">
                    <div class="accordion-body">
                        <p>Os Termos e Condições descrevem as regras e regulamentos para a utilização da nossa plataforma. É importante que todos os utilizadores concordem com estes termos antes de utilizar os nossos serviços.</p>
                        <ul>
                            <li>Utilização adequada dos serviços;</li>
                            <li>Proibição de atividades ilegais;</li>
                            <li>Direitos e responsabilidades do utilizador.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="accordion-item" id="privacidade">
                <h2 class="accordion-header" id="headingPrivacy">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapsePrivacy" aria-expanded="true" aria-controls="collapsePrivacy">
                        Política de Privacidade
                    </button>
                </h2>
                <div id="collapsePrivacy" class="accordion-collapse collapse show" aria-labelledby="headingPrivacy" data-bs-parent="#policiesAccordion">
                    <div class="accordion-body">
                        <p>A nossa Política de Privacidade explica como recolhemos, utilizamos e protegemos as informações pessoais dos nossos utilizadores. Garantimos a segurança e privacidade dos seus dados.</p>
                        <ul>
                            <li>Recolha de informações pessoais;</li>
                            <li>Utilização dos dados para melhorar serviços;</li>
                            <li>Proteção e armazenamento seguro.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="accordion-item" id="cookies">
                <h2 class="accordion-header" id="headingCookies">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseCookies" aria-expanded="true" aria-controls="collapseCookies">
                        Política de Cookies
                    </button>
                </h2>
                <div id="collapseCookies" class="accordion-collapse collapse show" aria-labelledby="headingCookies" data-bs-parent="#policiesAccordion">
                    <div class="accordion-body">
                        <p>Utilizamos cookies para melhorar a experiência do utilizador na nossa plataforma. Pode gerir as definições de cookies conforme a sua preferência.</p>
                        <ul>
                            <li>Finalidade dos cookies;</li>
                            <li>Tipos de cookies utilizados;</li>
                            <li>Opções para desativação.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="accordion-item" id="devolucoes">
                <h2 class="accordion-header" id="headingReturns">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseReturns" aria-expanded="true" aria-controls="collapseReturns">
                        Política de Devoluções
                    </button>
                </h2>
                <div id="collapseReturns" class="accordion-collapse collapse show" aria-labelledby="headingReturns" data-bs-parent="#policiesAccordion">
                    <div class="accordion-body">
                        <p>A nossa Política de Devoluções oferece aos utilizadores a possibilidade de reembolso em condições específicas. Consulte as regras abaixo:</p>
                        <ul>
                            <li>Prazo para solicitar devoluções;</li>
                            <li>Condições para produtos digitais;</li>
                            <li>Processo de reembolso.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include 'PHP/footer.php'; ?>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
