<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sobre Nós - .GAME</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <link href="CSS/footer.css" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Vue.js -->
    <script src="https://cdn.jsdelivr.net/npm/vue@3/dist/vue.global.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
        }
        .hero {
            text-align: center;
            padding: 50px 20px;
        }
        .hero img {
            max-width: 100%;
            height: auto;
         
        }
        .section {
            margin-top: 40px;
        }

        h3{
            font-weight: bold;
        }

        .mvv{
            padding-top: 45px;
        }
    </style>
</head>
<body>
<?php include 'PHP/navbar.php'; ?>
    <div id="app" class="container">
        <div class="hero">
            <h1 class="display-4">Sobre Nós</h1>
            <p class="lead">Bem-vindo à .GAME, a sua loja digital de jogos favorita!</p>
        </div>

        <div class="row section align-items-center">
            <div class="col-md-6">
                <img src="Imagens\gameabout.webp" class="img-fluid rounded" alt="Sobre Nós">
            </div>

            
            <div class="col-md-6">
                <h2>A Nossa História</h2>
                <p>
                    Na .GAME, acreditamos que cada jogador tem um universo próprio. A nossa missão é conectá-lo com os jogos que tornam a sua jornada inesquecível.
                    Desde o início, a nossa paixão por jogos eletrónicos guiou-nos para criar uma plataforma acessível, diversificada e segura.
                </p>
                <button class="btn btn-primary" @click="toggleMore">{{ showMore ? 'Leia Menos' : 'Leia Mais' }}</button>
                <p v-if="showMore" class="mt-3">
                    Contamos com um vasto catálogo que inclui desde os clássicos amados por gerações mais antigas até aos lançamentos mais recentes, garantindo que sempre encontre algo que se encaixe no seu estilo. Venha fazer parte de nossa comunidade gamer e descubra um universo de possibilidades!
                </p>
            </div>
        </div>


        <div class="class"></div>
        <div class="container mt-5">
  <div class="row">
    <div class="col-md-4">
      <div class="card">
       
        <div class="card-body">
          <h5 class="card-title">Missão</h5>
          <p class="card-text">Conectar jogadores ao que há de melhor no mundo dos jogos.</p>
       
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        
        <div class="card-body">
          <h5 class="card-title">Visão</h5>
          <p class="card-text">Ser a principal plataforma digital para gamers ao redor do mundo.</p>
          
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
       
        <div class="card-body">
          <h5 class="card-title">Valores</h5>
          <p class="card-text">Inovação, segurança, acessibilidade e paixão por jogos.</p>
         
        </div>
      </div>
    </div>
  </div>
</div>


 


    <!-- Bootstrap JS Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        const { createApp } = Vue;

        createApp({
            data() {
                return {
                    showMore: false
                };
            },
            methods: {
                toggleMore() {
                    this.showMore = !this.showMore;
                }
            }
        }).mount('#app');
    </script>
    <?php include 'PHP/footer.php'; ?>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
