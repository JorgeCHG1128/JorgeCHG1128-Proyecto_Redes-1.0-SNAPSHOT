<%-- 
    Document   : Home.jsp
    Created on : 14 mar. 2024, 10:10:54
    Author     : bporr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hero Cinema</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="css/Style.css">
    </head>
    <body>
        <header>
            <div class="navbar">
                <div class="logo"><a href="#">CineNet</a></div>
                <div class="toggle_btn">
                    <i class="fas fa-bars"></i>
                </div>
                <ul class="links">
                    <li><a href="Home.jsp">Pagina de Principal</a></li>
                    <li><a href="Cartelera.jsp">Cartelera</a></li>
                    <li><a href="Tienda.jsp">Entradas y Confiteria</a></li>
                    <li><a href="Contact.jsp">Contact us</a></li>
                    <li><a href="Facturacion.jsp" class="action_btn">Facturacion</a></li>
                </ul>
                <div class="dropdown_menu">
                    <ul>
                        <li><a href="Home.jsp">Pagina de Principal</a></li>
                        <li><a href="Cartelera.jsp">Cartelera</a></li>
                        <li><a href="Tienda.jsp">Entradas y Confiteria</a></li>
                        <li><a href="Contact.jsp">Contact us</a></li>
                        <li><a href="Facturacion.jsp" class="action_btn">Facturacion</a></li>
                    </ul>
                </div>
            </div>
        </header>

        <div class="containerlocation">
            <h1 class="logo">Hero Cinema</h1>
            <div class="location">
                <p>Pais: <span id="paisSeleccionado">[Pais]</span></p>

                <label for="pais">Selecciona tu país:</label>
                <select id="pais" onchange="cambiarMapa()">
                    <option value="EEUU">Estados Unidos</option>
                    <option value="España">España</option>
                    <option value="México">México</option>
                    <option value="CostaRica">Costa Rica</option>
                    <!-- Agrega más opciones según sea necesario -->
                </select>

                <div id="mapa" class="mapouter">
                    <div class="gmap_canvas">
                        <!-- El iframe del mapa se actualizará aquí -->
                    </div>
                </div>
            </div>
        </div>

        <div id="Principal" class="title-container">
            <h1>Principales pelis del mes</h1>
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

            <!-- Agrega más películas aquí -->
        </div>

        <!-- Pie de página -->
        <footer class="footer">
            <div class="container">
                <p class="footer-contact">Contacto: info@herocinema.com</p>
                <div class="social-media">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </footer>

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
            function cambiarMapa() {
                var select = document.getElementById("pais");
                var mapa = document.getElementById("mapa");
                var paisSeleccionado = select.options[select.selectedIndex].value;

                // Actualizar el texto del país seleccionado
                document.getElementById("paisSeleccionado").innerText = paisSeleccionado;

                // URL del mapa según el país seleccionado
                var urlMapa;
                switch (paisSeleccionado) {
                    case "EEUU":
                        urlMapa = "https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d348400.6759647098!2d-118.39499417784246!3d34.00277191097023!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1smovie%20theater!5e1!3m2!1sen!2sus!4v1712347450680!5m2!1sen!2sus";
                        break;
                    case "España":
                        urlMapa = "https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d324698.4369918249!2d-0.5216466539943432!3d39.411004888858564!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1scine!5e1!3m2!1sen!2sus!4v1712347558520!5m2!1sen!2sus";
                        break;
                    case "México":
                        urlMapa = "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24780.96492409772!2d-99.18511216523443!3d19.360612000000007!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d1ffc0bdd5331d%3A0x96e188ebb2ad7d82!2sNational%20Film%20Archives%20of%20M%C3%A9xico!5e1!3m2!1sen!2sus!4v1712347309585!5m2!1sen!2sus";
                        break;
                    case "CostaRica":
                        urlMapa = "https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d38755.730516656724!2d-84.34655559546538!3d10.059718655221925!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1scine!5e1!3m2!1ses-419!2scr!4v1712350352834!5m2!1ses-419!2scr";
                        break;
                        // Agrega más casos según sea necesario
                }

                // Actualizar el mapa
                mapa.innerHTML = '<div class="gmap_canvas"><iframe width="820" height="560" id="gmap_canvas" src="' + urlMapa + '" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe></div>';
            }

        </script>

    </body>
</html>
