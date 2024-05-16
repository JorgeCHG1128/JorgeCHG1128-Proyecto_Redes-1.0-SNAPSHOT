<%-- 
    Document   : Tienda.jsp
    Created on : 14 mar. 2024, 10:17:06
    Author     : bporr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
              integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
              integrity="sha384-vKFONCSR9fZ3zowFqcEHEHJwfyjk5g5wAs/P6vZYxvoPzFmaa3HViV8H4/JbmKHL" crossorigin="anonymous">
        <link rel="stylesheet" href="css/Tienda.css">
        <title>Hero Cinema</title>
    </head>
    <body>

        <header>
            <div class="navbar">
                <div class="logo"><a href="#">CineNet</a></div>
                <ul class="links">
                    <li><a href="Home.jsp">Pagina de Principal</a></li>
                    <li><a href="Cartelera.jsp">Cartelera</a></li>
                    <li><a href="Tienda.jsp">Entradas y Confiteria</a></li>
                    <li><a href="Contact.jsp">Contact us</a></li>
                </ul>
                <a href="Facturacion.html" class="action_btn">Facturacion</a>
                <div class="toggle_btn">
                    <i class="fa-solid fa-bars"></i>
                </div>
            </div>
            <div class="dropdown_menu">
                <li><a href="Home.jsp">Pagina de Principal</a></li>
                <li><a href="Cartelera.jsp">Cartelera</a></li>
                <li><a href="Tienda.jsp">Entradas y Confiteria</a></li>
                <li><a href="Contact.jsp">Contact us</a></li>
                <li><a href="Facturacion.jsp" class="action_btn">Facturacion</a></li>
            </div>
        </header>


        <br><br><br><br><br>


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

        <br><br><br>

        <%
           // Recuperar los parámetros de la URL
           String nombre = request.getParameter("nombre");
           String horario1 = request.getParameter("horario1");
           String horario2 = request.getParameter("horario2");
           String horario3 = request.getParameter("horario3");
           String tipoD = request.getParameter("tipoD");
           String tipoI = request.getParameter("tipoI");
           String sala = request.getParameter("sala");
        %>
        
        

        <div class="container mt-5">
            <div class="cardE">
                <div class="card-body">
                    <h3 class="card-title">Pelicula: <%= nombre %></h3>
                    <div class="times-container">
                        <div class="time-option"><%= horario1 %></div>
                        <div class="time-option"><%= horario2 %></div>
                        <div class="time-option"><%= horario3 %></div>
                    </div>
                    <br>
                    <div class="options-container">
                        <div class="option" id="2d"><%= tipoD %></div>
                        <div class="option" id="dob"><%= tipoI %></div>
                    </div>
                    <br>
                    <h3 class="card-title"><%= sala %></h3>

                    <br><br>

                    <div class="imgAcom">
                        <img src="img/ticket.jpg" alt="Ticket">
                        <p>REGULAR ADULTO</p>
                    </div>

                    <div class="texto-con-margen_I">
                        <p>Valor: ₡2,500,00</p>
                    </div>

                    <br>

                    <div class="tickets" id="ticket-section1">
                        <button class="btn btn-primary ticket-btn" id="decrement-btn1">
                            <i class="fas fa-minus"></i>
                        </button>
                        <input type="text" id="ticket-count1" value="0" readonly class="form-control ticket-count">
                        <button class="btn btn-primary ticket-btn" id="increment-btn1">
                            <i class="fas fa-plus"></i>
                        </button>
                    </div>

                    <br>

                    <div class="imgAcom">
                        <img src="img/ticket.jpg" alt="Ticket">
                        <p>REGULAR 3RA ADULTO</p>
                    </div>

                    <div class="texto-con-margen_I">
                        <p>Valor: ₡2,00,00</p>
                    </div>

                    <br>

                    <div class="tickets" id="ticket-section2">
                        <button class="btn btn-primary ticket-btn" id="decrement-btn2">
                            <i class="fas fa-minus"></i>
                        </button>
                        <input type="text" id="ticket-count2" value="0" readonly class="form-control ticket-count">
                        <button class="btn btn-primary ticket-btn" id="increment-btn2">
                            <i class="fas fa-plus"></i>
                        </button>
                    </div>

                    <br><br>

                    <div class="card-bodyB">
                        <a href="Asientos.jsp" class="continue-link">
                            <button class="continue-btn">Continuar</button>
                        </a>
                    </div>

                </div>
            </div>
        </div>

        <script src="script/entradas.js"></script>

    </body>
</html>
