<?php
include 'PHP/config.php'; 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
   
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $mensagem = $_POST['mensagem'];

  
    if (!empty($nome) && !empty($email) && !empty($mensagem)) {
 
        $stmt = $pdo->prepare("INSERT INTO contactos (nome, email, mensagem) VALUES (:nome, :email, :mensagem)");
        try {
           
            $stmt->execute([
                ':nome' => $nome,
                ':email' => $email,
                ':mensagem' => $mensagem
            ]);
            echo "<script>alert('Mensagem enviada com sucesso!');</script>";
        } catch (Exception $e) {
            echo "<script>alert('Erro ao enviar mensagem: " . $e->getMessage() . "');</script>";
        }
    } else {
        echo "<script>alert('Por favor, preencha todos os campos.');</script>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="CSS/contactus.css" />
    <link href="CSS/footer.css" rel="stylesheet">
    
</head>
<body> 
  
    <?php include 'PHP/navbar.php'; ?>

    <div class="contact_us_6">
        <div class="responsive-container-block container">
          <form class="form-box" action="contactus.php" method="POST">
            <div class="container-block form-wrapper">
              <div class="mob-text">
                <p class="text-blk contactus-head">
                  Contacta-nos
                </p>
              </div>
              <div class="responsive-container-block" id="i2cbk">
               
                <div class="responsive-cell-block wk-tab-12 wk-mobile-12 wk-desk-12 wk-ipadp-12" id="i10mt-3">
                  <p class="text-blk input-title">
                    Nome
                  </p>
                  <input class="input" name="nome" placeholder="Diz-nos o teu nome..." required>
                </div>
               
                <div class="responsive-cell-block wk-tab-12 wk-mobile-12 wk-desk-12 wk-ipadp-12" id="ip1yp">
                  <p class="text-blk input-title">
                    Correio Eletrónico
                  </p>
                  <input class="input" name="email" placeholder="Insere o teu email..." required>
                </div>
           
                <div class="responsive-cell-block wk-tab-12 wk-mobile-12 wk-desk-12 wk-ipadp-12" id="i634i-3">
                  <p class="text-blk input-title">
                    Mensagem
                  </p>
                  <textarea class="textinput" name="mensagem" placeholder="Escreve aqui a tua mensagem..." required></textarea>
                </div>
              </div>
              <button class="submit-btn" type="submit">
                Enviar mensagem
              </button>
            </div>
          </form>
          <div class="responsive-cell-block wk-desk-7 wk-ipadp-12 wk-tab-12 wk-mobile-12" id="i772w">
            <div class="map-part">
              <p class="text-blk map-contactus-head" id="w-c-s-fc_p-1-dm-id">
                Encontra-nos em,
              </p>
              <p class="text-blk map-contactus-subhead">            
                Coimbra Business School | ISCAC, Quinta Agrícola, 3045-601 Coimbra
              </p>
              <div class="social-media-links mob">
                <a class="social-icon-link" href="#" id="ix94i-2-2">
                  <img class="link-img image-block" src="https://workik-widget-assets.s3.amazonaws.com/Footer1-83/v1/images/Icon-twitter.png">
                </a>
                <a class="social-icon-link" href="#" id="itixd">
                  <img class="link-img image-block" src="https://workik-widget-assets.s3.amazonaws.com/Footer1-83/v1/images/Icon-facebook.png">
                </a>
                <a class="social-icon-link" href="#" id="izxvt">
                  <img class="link-img image-block" src="https://workik-widget-assets.s3.amazonaws.com/Footer1-83/v1/images/Icon-google.png">
                </a>
                <a class="social-icon-link" href="#" id="izldf-2-2">
                  <img class="link-img image-block" src="https://workik-widget-assets.s3.amazonaws.com/Footer1-83/v1/images/Icon-instagram.png">
                </a>
              </div>
              <div class="map-box container-block">
                <div class="container">
                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3046.9750171180917!2d-8.455043324183507!3d40.20961867147364!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd22f8f0b85baeb7%3A0x190fc4c9387ddaaa!2sCoimbra%20Business%20School%20%7C%20ISCAC!5e0!3m2!1spt-PT!2spt!4v1732481216358!5m2!1spt-PT!2spt" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
              </div>
              <div class="container"></div>
            </div>
          </div>
        </div>
      </div>

      <?php include 'PHP/footer.php'; ?>

      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
