<%-- 
    Document   : Login.jsp
    Created on : 14 mar. 2024, 10:07:15
    Author     : bporr
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/Style.css">
        <title>Iniciar Sesión - Cartelera de Cine</title>
    </head>
    <body>
        <div class="login-container">
            <div class="login-header">
                <img src="https://img.freepik.com/premium-vector/film-reel-logo-cinema-logo-vector_472355-391.jpg" alt="Cinema Logo">
                <h2>Iniciar Sesión</h2>
            </div>
            <div class="Proceso-Log">
                <form action="LoginServlet" method="post">
                    <label for="email">Nombre de Usuario:</label>
                    <input type="text" id="email" name="email" required>

                    <label for="password">Contraseña:</label>
                    <input type="password" id="password" name="password" required>

                    <div style="padding-bottom: 5px">
                        <button type="submit" id="inicio" name="inicio" 
                                class="boton-transparente"><a>Iniciar Sesión<a></button>
                    </div>

                    <div style="padding-bottom: 5px">
                        <button type="submit" id="register" name="register" class="boton-transparente"><a>Registrarse<a></button>
                    </div>
                    
                    <div style="padding-bottom: 5px">
                        <a href="LoginInvitado.jsp">Registrarse como Invitado</a>
                    </div>

                </form>
                <div>
                    <% 
                    Boolean flagRegistro = (Boolean)session.getAttribute("registro");
                    if(flagRegistro != null && flagRegistro){
                    %><h2>Registro con éxito</h2>
                    <%
                    }
                    %>
                </div>
                <div>
                    <% 
                    Boolean flagInicioSesion = (Boolean)request.getAttribute("inicioSesion");
                    if(flagInicioSesion != null && !flagInicioSesion){
                    %><h3 style="color: red;">Usuario/Contraseña incorrecto</h3>
                    <%
                    }
                    %>
                </div>
            </div>
        </div>
                
    </body>
</html>

