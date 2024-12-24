<!DOCTYPE html>
  <html lang="pt">
  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Pesquisa de Produtos</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
      <!-- Ícones do Bootstrap -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
      <link href="CSS/footer.css" rel="stylesheet">
      <style>
          body {
              background-color: #f8f9fa;
          }
          .container {
              margin-top: 30px;
          }
          .result-table img {
              width: 100%;
              max-width: 50px;
              height: auto;
              object-fit: cover;
              border-radius: 5px;
          }
          @media (max-width: 768px) {
              .form-control,
              .form-select,
              .btn {
                  max-width: 100%;
                  width: 100%;
              }
          }
      </style>
  </head>
  <body>
      <!-- Incluindo a Navbar -->
      <?php include 'PHP/navbar.php'; ?>
  
      <div class="container">
          <form id="search-form" class="row g-3 mt-4">
              <div class="col-12 col-md-6 col-lg-4">
                  <input type="text" id="search-input" class="form-control" placeholder="Nome do produto">
              </div>
              <div class="col-12 col-md-6 col-lg-2">
                  <select id="platform-filter" class="form-select">
                      <option value="">Plataforma</option>

                      <option value="Switch">Switch</option>
                      <option value="PC">PC</option>
                      <option value="PlayStation">PlayStation</option>
                      <option value="Xbox">Xbox</option>
                  </select>
              </div>
              <div class="col-12 col-md-6 col-lg-2">
                  <select id="status-filter" class="form-select">
                      <option value="">Status</option>
                      <option value="Available">Disponível</option>
                      <option value="Unavailable">Indisponível</option>
                  </select>
              </div>
              <div class="col-12 col-md-6 col-lg-2">
                  <input type="number" id="price-min" class="form-control" placeholder="Preço Mínimo">
              </div>
              <div class="col-12 col-md-6 col-lg-2">
                  <input type="number" id="price-max" class="form-control" placeholder="Preço Máximo">
              </div>
              <div class="col-12 text-center">
                  <button type="submit" class="btn btn-primary w-100 w-md-auto">Filtrar</button>
              </div>
          </form>
          
  
          <div class="result-table mt-5">
              <div class="table-responsive">
                  <table class="table table-bordered table-hover">
                      <thead class="table-dark">
                          <tr>
                              <th>#</th>
                              <th>Nome</th>
                              <th>Plataforma</th>
                              <th>Preço</th>
                              <th>Status</th>
                              <th>Descrição</th>
                              <th>Ações</th>
                          </tr>
                      </thead>
                      <tbody id="results">
                          <!-- Os resultados da pesquisa aparecerão aqui -->
                      </tbody>
                  </table>
              </div>
          </div>
          <div class="text-center mt-4">
            <a href="checkout.html" class="btn btn-success">Ir para o Checkout</a>
        </div>
      </div>
  
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
      <script>
          function loadProducts() {
              const url = new URL('PHP/pesquisa.php', window.location.origin);

              fetch(url)
                  .then(response => response.json())
                  .then(data => {
                      const results = document.getElementById('results');
                      results.innerHTML = '';

                      if (data.length === 0) {
                          results.innerHTML = '<tr><td colspan="8" class="text-center">Nenhum produto encontrado</td></tr>';
                      } else {
                          data.forEach(produto => {
                              const row = `
                                  <tr>
                                      <td>
                                          ${produto.image_url 
                                              ? `<img src="${produto.image_url}" alt="${produto.designation}" style="width: 50px; height: 50px; object-fit: cover;">`
                                              : `<img src="imagens/placeholder.jpg" alt="Imagem indisponível" style="width: 50px; height: 50px; object-fit: cover;">`
                                          }
                                      </td>
                                      <td><a href="showprod.php?id=${produto.id}">${produto.designation}</a></td>
                                      <td>${produto.platform}</td>
                                      <td>€${produto.price.toFixed(2)}</td>
                                      <td>${produto.status}</td>
                                      <td>${produto.description}</td>
                                      <td>
                                          <button 
                                              class="btn btn-primary add-to-cart" 
                                              data-id="${produto.id}" 
                                              data-name="${produto.designation}" 
                                              data-price="${produto.price}">
                                              Adicionar ao Carrinho
                                          </button>
                                      </td>
                                  </tr>
                              `;
                              results.innerHTML += row;
                          });

                          document.querySelectorAll('.add-to-cart').forEach(button => {
                              button.addEventListener('click', function () {
                                  const product = {
                                      id: this.getAttribute('data-id'),
                                      name: this.getAttribute('data-name'),
                                      price: parseFloat(this.getAttribute('data-price'))
                                  };

                                  addToCart(product);
                              });
                          });
                      }
                  })
                  .catch(error => {
                      console.error('Erro ao carregar produtos:', error);
                  });
          }

          document.getElementById('search-form').addEventListener('submit', function (e) {
              e.preventDefault();

              const query = document.getElementById('search-input').value;
              const platform = document.getElementById('platform-filter').value;
              const status = document.getElementById('status-filter').value;
              const priceMin = document.getElementById('price-min').value;
              const priceMax = document.getElementById('price-max').value;

              const url = new URL('PHP/pesquisa.php', window.location.origin);
              url.searchParams.append('query', query);
              if (platform) url.searchParams.append('platform', platform);
              if (status) url.searchParams.append('status', status);
              if (priceMin) url.searchParams.append('price_min', priceMin);
              if (priceMax) url.searchParams.append('price_max', priceMax);

              fetch(url)
                  .then(response => response.json())
                  .then(data => {
                      const results = document.getElementById('results');
                      results.innerHTML = '';

                      if (data.length === 0) {
                          results.innerHTML = '<tr><td colspan="8" class="text-center">Nenhum produto encontrado</td></tr>';
                      } else {
                          data.forEach(produto => {
                              const row = `
                                  <tr>
                                      <td>
                                          ${produto.image_url 
                                              ? `<img src="${produto.image_url}" alt="${produto.designation}" style="width: 50px; height: 50px; object-fit: cover;">`
                                              : `<img src="imagens/placeholder.jpg" alt="Imagem indisponível" style="width: 50px; height: 50px; object-fit: cover;">`
                                          }
                                      </td>
                                      <td><a href="showprod.php?id=${produto.id}">${produto.designation}</a></td>
                                      <td>${produto.platform}</td>
                                      <td>€${produto.price.toFixed(2)}</td>
                                      <td>${produto.status}</td>
                                      <td>${produto.description}</td>
                                      <td>
                                          <button 
                                              class="btn btn-primary add-to-cart" 
                                              data-id="${produto.id}" 
                                              data-name="${produto.designation}" 
                                              data-price="${produto.price}">
                                              Adicionar ao Carrinho
                                          </button>
                                      </td>
                                  </tr>
                              `;
                              results.innerHTML += row;
                          });

                          document.querySelectorAll('.add-to-cart').forEach(button => {
                              button.addEventListener('click', function () {
                                  const product = {
                                      id: this.getAttribute('data-id'),
                                      name: this.getAttribute('data-name'),
                                      price: parseFloat(this.getAttribute('data-price'))
                                  };

                                  addToCart(product);
                              });
                          });
                      }
                  })
                  .catch(error => {
                      console.error('Erro ao buscar produtos:', error);
                  });
          });

          function addToCart(product) {
              const cart = JSON.parse(localStorage.getItem('cart')) || [];
              cart.push(product);
              localStorage.setItem('cart', JSON.stringify(cart));
              alert('Produto adicionado ao carrinho!');
          }

          document.addEventListener('DOMContentLoaded', loadProducts);
      </script>

    <?php include 'PHP/footer.php'; ?>
  </body>
  </html>
