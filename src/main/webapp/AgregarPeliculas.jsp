<%-- 
    Document   : AgregarPeliculas
    Created on : 4 abr. 2024, 13:37:26
    Author     : bporr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/Style.css">
        <title>Agregar Peliculas</title>
    </head>
    <body>
                <div class="login-container">
            <div class="login-header">
                <img src="https://img.freepik.com/premium-vector/film-reel-logo-cinema-logo-vector_472355-391.jpg" alt="Cinema Logo">
                <h2>Agregar Peliculas</h2>
            </div>
            <div class="Proceso-Log">
                <form action="TablaPeServlet" method="post">
                    <input type="hidden" name="action" value="ingresar">
                    
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" required>

                    <label for="duracion">Duracion:</label>
                    <input type="text" id="duracion" name="duracion" required>
                    
                    <label for="genero">Principales/Terror/Comedia/Accion:</label>
                    <input type="text" id="genero" name="genero" required>

                    <div style="padding-bottom: 5px">
                        <button type="submit" class="boton-transparente"><a>Guardar<a></button> 
                    </div>
                    
                </form>
                
            </div>
        </div>
    </body>
</html>
