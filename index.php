<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <link href="css/footer.css" rel="stylesheet">


    <style>
        body {
            background-color: #7a7a7a;
        }

        
        spline-viewer {
        width: 100%;
        height: 100vh; 
        max-height: 600px; 
        background-color: url('imagens/fluxo.jpg');
    }
    
  
    @media (max-width: 768px) {
        spline-viewer {
            height: 50vh; 
        }
    }

        .hero {
            background-image: url('imagens/perfeito.webp');
            background-size: cover;
            background-position: center;
            height: 60vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-shadow: 0 2px 5px rgb(0, 0, 0);
        }
        .hero h1 {
            font-size: 4rem;
        }
        .features {
            padding: 4rem 0;
        }
        .features .icon {
            font-size: 2.5rem;
            color: #414449;
        }

        .contactus{
            text-shadow: 0 2px 5px rgb(0, 0, 0);
        }

        .slideshow{
   padding-top: 50px;
   padding-bottom: 50px;
    background-color: #c8c8c8;
  
  
    
}



.carousel-item img {
    max-width: 85%; 
    height: auto; 
    margin: auto; 
    border-radius: 25px;
    box-shadow: 0px 0px 5px rgb(0, 0, 0);

   
}



.carousel-indicators {
    bottom: 10px; 
}

.instrucoes{
color: #808080;
}


.bg-cinza {
        background: linear-gradient(135deg, #000000, #a1a1a1);
        
    }

    .bg-cinzae {
        background: #5a5a5a;
        
    }

    .help{
    background:linear-gradient(to bottom,#a7a7a7, #ffffff) ;
    margin-top: 0px;
    
}


.help .list-group{
    width:50%;
    padding-top: 60px;
    padding-bottom: 60px;
    display: flex;
   margin-left: auto;
   margin-right: auto;
   border-radius: 20px;
}

.help .list-group .list-group-item{
    background-color: #525252d0;
    color: white;
}


.help h1{
    padding-top: 45px;
    color: rgb(0, 0, 0);
    text-align: center;
   padding-bottom: -5px;
    
}
</style>
    
</head>
<body>
<?php include 'php/navbar.php'; ?>
    <div class="hero">
        <div class="text-center">
        
            <h1>.Game</h1>
            <p class="lead">Escolha hoje a sua próxima aventura. 🎮</p>
            <a href="search.php" class="btn btn-light btn-lg">Catálogo</a>
        </div>
    </div>

  


    <div class="contactus">
        <div class="text-center py-5 bg-cinza text-white" style="font-size: 2rem; font-weight: 500;">
            <p class="mb-3">Gaming é para todos.  <strong>Explore o nosso mundo de jogos! 🌎</strong></p>
            <!--<a href="contactos.html" class="btn btn-dark btn-lg px-2">Jogos</a>-->
        </div>
    </div>

  
<div class="help">
    <h1>Porquê Escolher a Game?</h1>
    <ul class="list-group list-group-flush">
        <li class="list-group-item">1. Melhores preços do mercado 💶</li>
        <li class="list-group-item">2. Descontos durante todo o ano 🚨</li>
        <li class="list-group-item">3. Facilidade do processo de compra e ativação 🛒</li>
        <li class="list-group-item">4. Segurança verificada pela nossa equipa 🛡️</li>
        <li class="list-group-item">5. Diversas plataformas 🕹️</li>
        <li class="list-group-item">6. Rápido e eficaz atendimento ao cliente 💨</li>
    </ul>
</div>


    <div class="slideshow">
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
          <ol class="carousel-indicators">
            <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true"></li>
            <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" class=""></li>
            <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" class=""></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item carousel-item-next carousel-item-start">
              <img class="d-block w-100" src="imagens/gtasa.jpeg" alt="First slide">
             <div class="carousel-caption d-none d-md-block">
                <h5></h5>
              <p></p>
              </div>
            </div>
            <div class="carousel-item">
              <img class="d-block w-100" src="imagens/ff2.jpeg" alt="Second slide">
              <div class="carousel-caption d-none d-md-block">
                <h5></h5>
                <p></p>
              </div>
            </div>
            <div class="carousel-item active carousel-item-start">
              <img class="d-block w-100" src="imagens/27372.webp    " alt="Third slide">
              <div class="carousel-caption d-none d-md-block">
                <h5></h5>
                <p></p>
              </div>
            </div>
          </div>
         
        </div>


       
              </div>
            </div>
          </div>
        </div>
      </div>

            
    </div>



    <div class="intrucoes ">
        <div class="container my-5">
        <h2 class="text-center text-white mb-4">Como adiciono um jogo?</h2>
        <table class="table table-hover align-middle" style="border-collapse: separate; border-spacing: 0 15px;">
            <thead class="bg-primary text-white text-center">
               
            </thead>
            <tbody>
                <tr class="bg-light shadow-sm">
                    <th scope="row" class="text-center">1</th>
                    
                    <td>Abra a plataforma do jogo que adquiriu.</td>
                   
                </tr>
                <tr class="bg-light shadow-sm">
                    <th scope="row" class="text-center">2</th>
                    
                    <td>Carrege em "Adicionar Jogo".</td>
                  
                </tr>
                <tr class="bg-light shadow-sm">
                    <th scope="row" class="text-center">3</th>
                   
                    <td>Introduza a chave recebida aquando a compra do jogo.</td>
                    
                </tr>
                <tr class="bg-light shadow-sm">
                    <th scope="row" class="text-center">4</th>
                    
                    <td>Divirta-se e aproveite!.</td>
                    
                </tr>
            </tbody>
        </table>
    </div>
</div>


<?php include 'php/footer.php'; ?>

</body>
</html>