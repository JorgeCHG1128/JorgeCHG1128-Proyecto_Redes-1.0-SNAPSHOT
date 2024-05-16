<%-- 
    Documento   : Cartelera.jsp
    Creado en : 14 mar. 2024, 10:15:24
    Autor     : bporr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
              integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
              crossorigin="anonymous" 
              referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="css/Style.css">
        <title>Hero Cinema</title> 
    </head>
    <body>
        <header>
            <div class="navbar">
                <div class="logo"><a href="#">CineNet </a></a></div>
                <ul class="links">
                    <li><a href="Home.jsp">Página Principal</a></li>
                    <li><a href="Cartelera.jsp">Cartelera</a></li>
                    <li><a href="Tienda.jsp">Entradas y Confitería</a></li>
                    <li><a href="Contact.jsp">Contáctenos</a></li>
                </ul>
                <a href="Facturacion.jsp" class="action_btn">Facturación</a>
                <div class="toggle_btn">
                    <i class="fa-solid fa-bars"></i>
                </div>
            </div>
            <div class="dropdown_menu">
                <li><a href="Home.jsp">Página Principal</a></li>
                <li><a href="Cartelera.jsp">Cartelera</a></li>
                <li><a href="Tienda.jsp">Entradas y Confitería</a></li>
                <li><a href="Contact.jsp">Contáctenos</a></li>
                <li><a href="Facturacion.jsp" class="action_btn">Facturación</a></li>
            </div>
        </header>

        <div class="accesorapido">
            <ul>
                <li>
                    <a href="#Principal" data-number="1" class="is-selected">
                        <span class="cd-dot"></span>
                        <span class="cd-label">Principales</span>
                    </a>
                </li>
                <li>
                    <a href="#Terror" data-number="2" class>
                        <span class="cd-dot"></span>
                        <span class="cd-label">Terror</span>
                    </a>
                </li>
                <li>
                    <a href="#Comedia" data-number="3" class>
                        <span class="cd-dot"></span>
                        <span class="cd-label">Comedia</span>
                    </a>
                </li>
                <li>
                    <a href="#Accion" data-number="4" class>
                        <span class="cd-dot"></span>
                        <span class="cd-label">Acción</span>
                    </a>
                </li>
            </ul>
        </div>

        <div id="Principal" class="title-container">
            <h1>Cartelera</h1>
        </div>

        <div class="gallery-container">
            <!-- Películas para la Sección Principales -->
            <div class="card" tabindex="0">
                <img src="img/dune.jpg" alt="Imagen de Dune"/>
                <h1>Dune</h1>
                <div class="text">
                    <h2 data-splitting=""></h2>
                    <a href="#" onclick="redirectToTienda('Dune', '10:00 AM', '1:00 PM', '4:00 PM', '2D', 'DOBL',
                                    'Sala 1')">Dune</a>
                    <p data-splitting="">Horarios: 10:00 AM, 1:00 PM, 4:00 PM   Sala: 1</p>
                </div>
            </div>

            <div class="card" tabindex="0">
                <img src="img/TheBatman.jpg" alt="Imagen de The Batman"/>
                <h1>The Batman</h1>
                <div class="text">
                    <h2 data-splitting=""></h2>
                    <a href="#" onclick="redirectToTienda('The Batman', '12:00 PM', '3:00 PM', '6:00 PM', '2D', 'SUB',
                                    'Sala 2')">The Batman</a>
                    <p data-splitting="">Horarios: 12:00 PM, 3:00 PM, 6:00 PM   Sala: 2</p>
                </div>
            </div>

            <div class="card" tabindex="0">
                <img src="img/Spiderman.jpg" alt="Imagen de Spider-Man: No Way Home"/>
                <h1>Spider-Man: No Way Home</h1>
                <div class="text">
                    <h2 data-splitting=""></h2>
                    <a href="#" onclick="redirectToTienda('Spider-Man No Way Home', '2:00 PM', '5:00 PM', '8:00 PM',
                                    '3D', 'DOBL', 'Sala 3')">Spider-Man</a>
                    <p data-splitting="">Horarios: 2:00 PM, 5:00 PM, 8:00 PM   Sala: 3</p>
                </div>
            </div>

            <div class="card" tabindex="0">
                <img src="img/joker.png" alt="Imagen de Joker"/>
                <h1>Joker</h1>
                <div class="text">
                    <h2 data-splitting=""></h2>
                    <a href="#" onclick="redirectToTienda('Joker', '4:00 PM', '7:00 PM', '10:00 PM', '2D', 'Sub',
                                    'Sala 4')">Joker</a>
                    <p data-splitting="">Horarios: 4:00 PM, 7:00 PM, 10:00 PM   Sala: 4</p>
                </div>
            </div>
        </div>

        <!-- Terror -->
        <div id="Terror" class="title-container2">
            <h1>Terror</h1>
        </div>

        <div class="gallery-container">
            <!-- Películas para la Sección Terror -->
            <div class="card" tabindex="0">
                <img src="img/Pesadilla en Elm Street.jpg" alt="Imagen de Pesadilla en Elm Street"/>
                <h1>Pesadilla en Elm Street</h1>
                <div class="text">
                    <a href="#" onclick="redirectToTienda('Pesadilla en Elm Street', '11:00 AM', '2:00 PM', '7:00 PM',
                                    '3D', 'DOBL', 'Sala 5')">Pesadilla en Elm Street</a>
                    <p data-splitting="">Horarios: 11:00 AM, 2:00 PM, 7:00 PM    Sala: 5</p>
                </div>
            </div>

            <div class="card" tabindex="0">
                <img src="img/La Masacre de Texas.jpg" alt="Imagen de La Masacre de Texas"/>
                <h1>La Masacre de Texas</h1>
                <div class="text">
                    <a href="#" onclick="redirectToTienda('La Masacre de Texas', '12:00 AM', '3:00 PM', '9:00 PM',
                                    '2D', 'SUB', 'Sala 6')">La Masacre de Texas</a>
                    <p data-splitting="">Horarios: 12:00 AM, 3:00 PM, 9:00 PM   Sala: 6</p>
                </div>
            </div>

            <div class="card" tabindex="0">
                <img src="img/La Noche de los Muertos Vivientes.jpg" alt="Imagen de El Exorcista"/>
                <h1>La noche de los muertos</h1>
                <div class="text">
                    <a href="#" onclick="redirectToTienda('La noche de los muertos', '10:00 PM', '1:00 PM', '4:00 PM',
                                    '2D', 'DOBL', 'Sala 7')">La noche de los muertos</a>
                    <p data-splitting="">Horarios: 10:00 AM, 1:00 PM, 4:00 PM   Sala: 7</p>
                </div>
            </div>

            <div class="card" tabindex="0">
                <img src="img/viernes 13.jpg" alt="Imagen de The Shining"/>
                <h1>Viernes 13</h1>
                <div class="text">
                    <a href="#" onclick="redirectToTienda('Viernes 13', '3:00 PM', '6:00 PM', '9:00 PM',
                                    '3D', 'SUB', 'Sala 8')">Viernes 13</a>
                    <p data-splitting="">Horarios: 3:00 PM, 6:00 PM, 9:00 PM   Sala: 8</p>
                </div>
            </div>
        </div>

        <!-- Comedia -->
        <div id="Comedia" class="title-container2">
            <h1>Comedia</h1>
        </div>

        <div class="gallery-container">
            <!-- Películas para la Sección Comedia -->
            <div class="card" tabindex="0">
                <img src="img/The Hangover.jpg" alt="Imagen de The Hangover"/>
                <h1>The Hangover</h1>
                <div class="text">
                    <a href="#" onclick="redirectToTienda('The Hangover', '12:00 PM', '7:00 PM', '10:00 PM',
                                    '2D', 'SUB', 'Sala 1')">The Hangover</a>
                    <p data-splitting="">Horarios: 12:00 PM, 7:00 PM, 10:00 PM   Sala: 1</p>
                </div>
            </div>

            <div class="card" tabindex="0">
                <img src="img/Superbad.jpg" alt="Imagen de Superbad"/>
                <h1>Superbad</h1>
                <div class="text">
                    <a href="#" onclick="redirectToTienda('Superbad', '10:00 AM', '8:00 PM', '11:00 PM',
                                    '2D', 'DOBL', 'Sala 2')">Superbad</a>
                    <p data-splitting="">Horarios: 10:00 AM, 8:00 PM, 11:00 PM   Sala: 2</p>
                </div>
            </div>

            <div class="card" tabindex="0">
                <img src="img/Ted.jpg" alt="Imagen de Ted"/>
                <h1>Ted</h1>
                <div class="text">
                    <a href="#" onclick="redirectToTienda('Ted', '10:00 AM', '12:00 PM', '10:00 PM',
                                    '3D', 'SUB', 'Sala 3')">Ted</a>
                    <p data-splitting="">Horarios: 10:00 AM, 12:00 PM, 10:00 PM   Sala: 3</p>
                </div>
            </div>

            <div class="card" tabindex="0">
                <img src="img/Deadpool.webp" alt="Imagen de Deadpool"/>
                <h1>Deadpool</h1>
                <div class="text">
                    <a href="#" onclick="redirectToTienda('Deadpool', '10:00 AM', '12:00 PM', '2:00 PM',
                                    '3D', 'DOBL', 'Sala 4')">Deadpool</a>
                    <p data-splitting="">Horarios: 10:00 AM, 12:00 PM, 9:00 PM   Sala: 4</p>
                </div>
            </div>
        </div>

        <!-- Accion -->
        <div id="Accion" class="title-container2">
            <h1>Acción</h1>
        </div>

        <div class="gallery-container">
            <!-- Películas para la Sección Acción -->
            <div class="card" tabindex="0">
                <img src="img/Avatar.jpg" alt="Imagen de Avatar"/>
                <h1>Avatar</h1>
                <div class="text">
                    <a href="#" onclick="redirectToTienda('Avatar', '8:00 AM', '10:00 PM', '12:00 AM',
                                    '2D', 'SUB', 'Sala 5')">Avatar</a>
                    <p data-splitting="">Horarios: 8:00 AM, 10:00 PM, 12:00 AM   Sala: 5</p>
                </div>
            </div>

            <div class="card" tabindex="0">
                <img src="img/Avengers Endgame.jpg" alt="Imagen de Avengers: Endgame"/>
                <h1>Avengers: Endgame</h1>
                <div class="text">
                    <a href="#" onclick="redirectToTienda('Avengers: Endgame', '10:00 AM', '12:00 PM', '11:00 PM',
                                    '3D', 'DOBL', 'Sala 6')">Avengers: Endgame</a>
                    <p data-splitting="">Horarios: 10:00 AM, 12:00 PM, 11:00 PM   Sala: 6</p>
                </div>
            </div>

            <div class="card" tabindex="0">
                <img src="img/Jurassic World.jpg" alt="Imagen de Jurassic World"/>
                <h1>Jurassic World</h1>
                <div class="text">
                    <a href="#" onclick="redirectToTienda('Jurassic World', '12:00 PM', '7:00 PM', '11:00 PM',
                                    '2D', 'SUB', 'Sala 7')">Jurassic World</a>
                    <p data-splitting="">Horarios: 12:00 PM, 7:00 PM, 11:00 PM   Sala: 7</p>
                </div>
            </div>

            <div class="card" tabindex="0">
                <img src="img/Piratas del Caribe.jpg" alt="Imagen de Piratas del Caribe"/>
                <h1>Piratas del Caribe</h1>
                <div class="text">
                    <a href="#" onclick="redirectToTienda('Jurassic World', '11:00 AM', '1:00 PM', '5:00 PM',
                                    '2D', 'DOBL', 'Sala 8')">Jurassic World</a>
                    <p data-splitting="">Horarios: 11:00 AM, 1:00 PM, 5:00 PM   Sala: 8</p>
                </div>
            </div>
        </div>

        <script>
            function redirectToTienda(nombre, horario1, horario2, horario3, tipoD, tipoI, sala) {
                // Construir la URL con los parámetros
                var url = 'Tienda.jsp?nombre=' + encodeURIComponent(nombre) +
                        '&horario1=' + encodeURIComponent(horario1) +
                        '&horario2=' + encodeURIComponent(horario2) +
                        '&horario3=' + encodeURIComponent(horario3) +
                        '&tipoD=' + encodeURIComponent(tipoD) +
                        '&tipoI=' + encodeURIComponent(tipoI) +
                        '&sala=' + encodeURIComponent(sala);

                // Guardar los parámetros en localStorage
                localStorage.setItem('nombre', nombre);
                localStorage.setItem('horario1', horario1);
                localStorage.setItem('horario2', horario2);
                localStorage.setItem('horario3', horario3);
                localStorage.setItem('tipoD', tipoD);
                localStorage.setItem('tipoI', tipoI);
                localStorage.setItem('sala', sala);

                // Redireccionar a la página Tienda.jsp
                window.location.href = url;
            }
        </script>

        <script src="script/app.js"></script>
    </body>
</html>