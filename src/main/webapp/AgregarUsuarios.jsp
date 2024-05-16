<%-- 
    Document   : AgregarUsuarios
    Created on : 4 abr. 2024, 12:47:03
    Author     : bporr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/Style.css">
        <title>Agregar Usuarios</title>
    </head>
    <body>
        <div class="login-container">
            <div class="login-header">
                <img src="https://img.freepik.com/premium-vector/film-reel-logo-cinema-logo-vector_472355-391.jpg" alt="Cinema Logo">
                <h2>Registar Usuarios</h2>
            </div>
            <div class="Proceso-Log">
                <form action="TablaUsServlet" method="post">
                    <input type="hidden" name="action" value="ingresar">
                    
                    <label for="email">Nombre de Usuario:</label>
                    <input type="text" id="email" name="email" required>

                    <label for="password">Contraseña:</label>
                    <input type="password" id="password" name="password" required>
                    
                    <label for="rol">Administrador/Cliente:</label>
                    <input type="text" id="rol" name="rol" required>

                    <div style="padding-bottom: 5px">
                        <button type="submit" class="boton-transparente"><a>Registrarse<a></button> 
                    </div>
                    
                </form>
                
            </div>
        </div>
                
    </body>
</html>
