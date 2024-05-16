<%-- 
    Document   : Admin.jsp
    Created on : 2 abr. 2024, 20:38:08
    Author     : bporr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/Admin.css">
        <title>Administrador</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">    </head>
    <body>
       <div id="menu">
    <ul>
        <li><a href="TablaUsServlet">Tabla Usuarios</a></li>
        <li><a href="TablaPeServlet">Tabla Películas</a></li>
        <li><a href="TablaProServlet">Tabla Productos</a></li>
        <li></li>
        <li></li>
        <li></li>
        <li><a href="Login.jsp">Cerrar Sesión</a></li>
    </ul>
</div>

<div id="content">
    <div id="welcome">
        Bienvenido Administrador
    </div>
</div>
    </body>
</html>