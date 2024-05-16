<%-- 
    Document   : AgregarProductos
    Created on : 4 abr. 2024, 13:48:47
    Author     : bporr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/Style.css">
        <title>Agregar Productos</title>
    </head>
    <body>
         <div class="login-container">
            <div class="login-header">
                <img src="https://img.freepik.com/premium-vector/film-reel-logo-cinema-logo-vector_472355-391.jpg" alt="Cinema Logo">
                <h2>Agregar Productos</h2>
            </div>
            <div class="Proceso-Log">
                <form action="TablaProServlet" method="post">
                    <input type="hidden" name="action" value="ingresar">
                    
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" required>

                    <label for="decripcion">Descripcion:</label>
                    <input type="text" id="descripcion" name="descripcion" required>
                    
                    <label for="precio">Precio:</label>
                    <input type="number" id="precio" name="precio" required>
                    
                    <label for="stock">Stock:</label>
                    <input type="number" id="stock" name="stock" required>

                    <div style="padding-bottom: 5px">
                        <button type="submit" class="boton-transparente"><a>Guardar<a></button> 
                    </div>
                    
                </form>
                
            </div>
        </div>
    </body>
</html>
