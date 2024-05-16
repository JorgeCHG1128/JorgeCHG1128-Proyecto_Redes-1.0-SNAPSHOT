<%-- 
    Document   : Confiteria.jsp
    Created on : 14 mar. 2024, 10:23:10
    Author     : bporr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confitería</title>
        <link rel="stylesheet" href="css/Tienda.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-vKFONCSR9fZ3zowFqcEHEHJwfyjk5g5wAs/P6vZYxvoPzFmaa3HViV8H4/JbmKHL" crossorigin="anonymous">
</head>
<body>
    <div class="timeline-menu">
        <div class="timeline-container">
            <div class="timeline">
              <a href="Tienda.jsp" class="point" id="entradas" title="Entradas"></a>
                
                <a href="Asientos.jsp" class="point" id="asientos" title="Asientos"></a>
                
                <a href="Confiteria.jsp" class="point" id="confiteria" title="Confitería"></a>
                
            </div>
            
            <div class="line"></div>
        </div>
         <div class="point-names">
            <span>Entradas</span>
            <span>Asientos</span>
            <span>Alimentos y Bebidas</span>
        </div>
      </div>

      <br><br>

    <div class="container">
        <h2>Alimentos y Bebidas</h2>
        <br><br>
        <div class="combos">
            <!-- Combo 1 -->
            <div class="combo">
                <div class="imgAcomC">
                    <img src="img/comboPH.jpg" alt="Combo 1">
                </div>
                
                <div class="textP">
                    <p>Combo Hot Dog</p>
                    <p>Precio: ₡7,000,00</p>
                </div>
            
                <div class="quantity-controls">
                    <button class="btn btn-secondary subtract-button">-</button>
                    <span class="quantity">0</span>
                    <button class="btn btn-secondary add-button">+</button>
                </div>
            </div>
            <!-- Combo 2 -->
            <div class="combo">
                <div class="imgAcomC">
                    <img src="img/comboPHN.jpg" alt="Combo 2">
                </div>
                <div class="textP">
                    <p>Combo Dual</p>
                    <p>Precio: ₡15,000,00</p>
                </div>
                <div class="quantity-controls">
                    <button class="btn btn-secondary subtract-button">-</button>
                    <span class="quantity">0</span>
                    <button class="btn btn-secondary add-button">+</button>
                </div>
            </div>
            <!-- Combo 3 -->
            <div class="combo">
                <div class="imgAcomC">
                    <img src="img/comboPN.jpg" alt="Combo 3">
                </div>
                <div class="textP">
                    <p>Combo de Nachos</p>
                    <p>Precio: ₡7,500,00</p>
                </div>
                <div class="quantity-controls">
                    <button class="btn btn-secondary subtract-button">-</button>
                    <span class="quantity">0</span>
                    <button class="btn btn-secondary add-button">+</button>
                </div>
            </div>
            <!-- Combo 4 -->
            <div class="combo">
                <div class="imgAcomC">
                    <img src="img/palomitas.jpg" alt="Palomitas">
                </div>
                <div class="textP">
                    <p>Palomitas</p>
                    <p>Precio: ₡3,000,00</p>
                </div>
                <div class="quantity-controls">
                    <button class="btn btn-secondary subtract-button">-</button>
                    <span class="quantity">0</span>
                    <button class="btn btn-secondary add-button">+</button>
                </div>
            </div>
            <!-- Combo 5 -->
            <div class="combo">
                <div class="imgAcomC">
                    <img src="img/refresco.jpg" alt="Refresco">
                </div>
                <div class="textP">
                    <p>Refresco</p>
                    <p>Precio: ₡2,000,00</p>
                </div>
                <div class="quantity-controls">
                    <button class="btn btn-secondary subtract-button">-</button>
                    <span class="quantity">0</span>
                    <button class="btn btn-secondary add-button">+</button>
                </div>
            </div>
            <!-- Combo 6 -->
            <div class="combo">
                <div class="imgAcomC">
                     <img src="img/agua.jpg" alt="Agua">
                </div>
                <div class="textP">
                    <p>Agua</p>
                    <p>Precio: ₡1,000,00</p>
                </div>
                <div class="quantity-controls">
                    <button class="btn btn-secondary subtract-button">-</button>
                    <span class="quantity">0</span>
                    <button class="btn btn-secondary add-button">+</button>
                </div>
            </div>
            <!-- Combo 7 -->
            <div class="combo">
                <div class="imgAcomC">
                     <img src="img/hotDog.jpg" alt="Hot Dog">
                </div>
                <div class="textP">
                    <p>Hot dog</p>
                    <p>Precio: ₡4,000,00</p>
                </div>
                <div class="quantity-controls">
                    <button class="btn btn-secondary subtract-button">-</button>
                    <span class="quantity">0</span>
                    <button class="btn btn-secondary add-button">+</button>
                </div>
            </div>
            <!-- Combo 8 -->
            <div class="combo">
                <div class="imgAcomC">
                     <img src="img/nachos.jpg" alt="Nachos">
                </div>
                <div class="textP">
                    <p>Nachos</p>
                    <p>Precio: ₡4,500,00</p>
                </div>
                <div class="quantity-controls">
                    <button class="btn btn-secondary subtract-button">-</button>
                    <span class="quantity">0</span>
                    <button class="btn btn-secondary add-button">+</button>
                </div>
            </div>
        </div>

        <br><br>

        <div class="card-bodyB">
            <a href="Asientos.jsp" class="continue-link">
                <button class="back-btn">Regresar</button>
            </a>
            <a href="Facturacion.jsp" class="continue-link">
                <button class="continue-btn">Finalizar Compra</button>
            </a>
        </div>

        <br><br>

    </div>

    <script src="entradas.js"></script>
</body>
</html>
