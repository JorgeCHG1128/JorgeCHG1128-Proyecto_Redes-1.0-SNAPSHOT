<%-- 
    Document   : Contact.jsp
    Created on : 14 mar. 2024, 10:25:13
    Author     : bporr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CineNet - Sumérgete en el Mundo del Cine Moderno</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <style>
        /* Estilos globales */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Open Sans', sans-serif;
        }
        
        body {
            height: 100vh;
            background: #191c29;
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 0;
        }

        li {
            list-style: none;
        }

        a {
            text-decoration: none;
            color: rgb(61, 218, 239);
            font-size: 1rem;
            font-family: 'Courier New', Courier, monospace;
        }

        a:hover {
            color: rgb(245, 241, 240);
        }

        /* Header */
        header {
            position: fixed;
            width: 100%;
            background-color: #000000;
            color: #fff;
            padding: 15px;
            text-align: center;
            z-index: 1000;
        }

        .navbar {
            width: 100%;
            height: 60px;
            margin: 0 auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .navbar .logo a {
            font-size: 3rem;
            font-weight: bold;
        }

        .navbar .links {
            display: flex;
            gap: 2rem;
        }

        .navbar .toggle_btn {
            color: rgb(6, 220, 236);
            font-size: 1.5rem;
            cursor: pointer;
            display: none;
        }

        .action_btn {
            background-color: rgb(6, 153, 232);
            color: black;
            padding: 0.5rem 1rem;
            border: none;
            border-radius: 20px;
            font-size: 0.8rem;
            font-weight: bold;
            cursor: pointer;
        }

        .action_btn:hover {
            transform: scale(1.05);
            color: #fff;
        }

        .action_btn:active {
            transform: scale(0.75);
        }

        /* DropDown Menu */
        .dropdown_menu {
            display: none;
            position: absolute;
            right: 2rem;
            top: 60px;
            height: 0;
            width: 300px;
            background: rgba(191, 32, 32, 0.1);
            backdrop-filter: blur(15px);
            border-radius: 10px;
            overflow: hidden;
            transition: height cubic-bezier(0.175, 0.885, 0.32, 1.275);
        }

        .dropdown_menu.open {
            height: 300px;
        }

        .dropdown_menu li {
            padding: 0.7rem;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .dropdown_menu .action_btn {
            width: 100%;
            display: flex;
            justify-content: center;
        }

        /* Responsive design */
        @media (max-width: 992px) {
            .navbar .links,
            .navbar .action_btn {
                display: none;
            }

            .navbar .toggle_btn {
                display: block;
            }

            .dropdown_menu {
                display: block;
            }
        }

        /* Contenedor principal */
        .container {
            max-width: 800px;
            margin: 100px auto 20px;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        /* Estilos adicionales para el contenido */
        h1, h2, p {
            margin-bottom: 20px;
        }

        .wrapper {
            list-style-type: none;
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .icon {
            background-color: #343a40;
            color: white;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }

        .icon span {
            display: none;
            position: absolute;
            bottom: 125%;
            left: 50%;
            transform: translateX(-50%);
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            font-size: 14px;
            padding: 5px;
            border-radius: 5px;
            transition: opacity 0.3s ease;
            pointer-events: none;
        }

        .icon:hover span {
            display: block;
        }
    </style>
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
        <a href="Facturacion.jsp" class="action_btn">Facturcion</a>
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

<div class="container">
    <h1>CineNet: Sumérgete en el Mundo del Cine Moderno</h1>
    <p>CineNet es mucho más que un simple cine; es una experiencia cinematográfica de primer nivel que combina lo mejor del entretenimiento moderno con la comodidad y la tecnología de vanguardia. Ubicado en el corazón de la ciudad, CineNet te invita a adentrarte en un mundo de emociones, aventuras y sensaciones inolvidables.</p>
    <h2>Experiencia Cinematográfica de Última Generación</h2>
    <p>En CineNet, no solo verás películas, sino que vivirás una experiencia audiovisual inmersiva como nunca antes. Nuestras salas de cine están equipadas con lo último en tecnología de proyección y sonido, garantizando una calidad de imagen y sonido incomparables. Sumérgete en la acción con pantallas gigantes de alta definición y disfruta de un sonido envolvente que te transportará al corazón de la película.</p>
   
    <h2>Síguenos en Redes Sociales</h2>
    <ul class="wrapper">
        <li class="icon facebook"><i class="fab fa-facebook-f"></i><span>Facebook</span></li>
        <li class="icon twitter"><i class="fab fa-twitter"></i><span>Twitter</span></li>
        <li class="icon instagram"><i class="fab fa-instagram"></i><span>Instagram</span></li>
        <li class="icon github"><i class="fab fa-github"></i><span>Github</span></li>
        <li class="icon youtube"><i class="fab fa-youtube"></i><span>Youtube</span></li>
    </ul>
</div>

</body>
</html>