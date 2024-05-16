<%-- 
    Document   : LoginRegister
    Created on : 28 mar. 2024, 15:10:42
    Author     : bporr
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/Style.css">
        <title>Iniciar Sesión Invitado</title>
    </head>
    <body>
        <div class="login-container">
            <div class="login-header">
                <img src="https://img.freepik.com/premium-vector/film-reel-logo-cinema-logo-vector_472355-391.jpg" alt="Cinema Logo">
                <h2>Iniciar Sesión</h2>
            </div>
            <div class="Proceso-Log">
                <form id="loginForm" method="post" action="Home.jsp" onsubmit="return validarFormulario()">
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" required>

                    <label for="apellidos">Appelidos:</label>
                    <input type="text" id="apellidos" name="apellidos" required>

                    <label for="email">Correo:</label>
                    <input type="text" id="email" name="email" required>

                    <label for="telefono">Telefono:</label>
                    <input type="number" id="telefono" name="telefono" required>

                    <label for="cedula">Cedula:</label>
                    <input type="number" id="cedula" name="cedula" required>

                    <div style="padding-bottom: 5px">
                        <button type="submit" class="boton-transparente"><a>Iniciar Sesión<a></button>
                                    
                        <!-- Botón de Regresar con Bootstrap -->
                        <a href="Login.jsp">- Regresar</a>
                    </div>

                    </form>


            </div>
        </div>
        
         <script>
        function validarFormulario() {
            var nombre = document.getElementById("nombre").value;
            var apellidos = document.getElementById("apellidos").value;
            var email = document.getElementById("email").value;
            var telefono = document.getElementById("telefono").value;
            var cedula = document.getElementById("cedula").value;

            // Verificar si los campos están completos
            if (nombre !== "" && apellidos !== "" && email !== "" && telefono !== "" && cedula !== "") {
                
            // Validar el formato del correo electrónico
            if (email.indexOf('@') === -1 || email.indexOf('.') === -1) {
                alert("Por favor, ingrese un correo electrónico válido.");
                return false;
            }

            // Validar el número de teléfono
            if (telefono.length !== 8 || isNaN(telefono)) {
                alert("Por favor, ingrese un número de teléfono válido de 8 dígitos.");
                return false;
            }

            // Validar la cédula
            if (cedula.length !== 9 || isNaN(cedula)) {
                alert("Por favor, ingrese una cédula válida de 9 dígitos.");
                return false;
            } 
                // Redireccionar a la página "Home.jsp" si los campos están completos
                window.location.href = "Home.jsp";
                return true;
            } else {
                // Mostrar un mensaje de error si los campos no están completos
                alert("Por favor, complete todos los campos antes de iniciar sesión.");
                return false;
            }
        }
    </script>

</body>
</html>

