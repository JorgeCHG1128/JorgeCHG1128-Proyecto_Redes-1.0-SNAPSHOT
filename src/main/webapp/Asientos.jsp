<%-- 
    Document   : Asientos.jsp
    Created on : 14 mar. 2024, 10:21:47
    Author     : bporr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seleccionar Asientos</title>
        <link rel="stylesheet" href="css/Tienda.css">
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
     
    <div class="seating-plan">
        <h2>Pantalla</h2>

        <div class="screen-image">
            <img src="img/pantalla.jpg" alt="Imagen de la pantalla">
        </div>

        <br><br>

        <div class="seating-map" id="seating-map">
            <!-- Aquí se añadirán los asientos -->
        </div>

        <div class="legend">

            <div class="legend-row" id="ticket-count-display"></div>
            
            <div class="legend-row">
                <p>Ocupado <span style="color: #191c29;">.</span></p>
                <div class="color-box" style="background-color: red;"></div>
            </div>
            <div class="legend-row">
                <p>Discapacitados  <span style="color: #191c29;">.</span></p>
                <div class="color-box" style="background-color: blue;"></div>
            </div>
            <div class="legend-row">
                <p>Seleccionado  <span style="color: #191c29;">.</span></p>
                <div class="color-box" style="background-color: green;"></div>
            </div>
            <div class="legend-row">
                <p>Libre  <span style="color: #191c29;">.</span></p>
                <div class="color-box" style="background-color: grey;"></div>
            </div>

            <div class="card-bodyB">
                <a href="Tienda.jsp" class="continue-link">
                    <button class="back-btn">Regresar</button>
                </a>
                <a href="Confiteria.jsp" class="continue-link">
                    <button class="continue-btn">Continuar</button>
                </a>
            </div>

        </div>

    </div>

    <script src="script/entradas.js"></script>
</body>
</html>