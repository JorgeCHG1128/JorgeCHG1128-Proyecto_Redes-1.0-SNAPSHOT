<%-- 
    Document   : TablaPeliculas
    Created on : 3 abr. 2024, 11:54:03
    Author     : bporr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import= "model.Peliculas" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/Tablas.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Peliculas</title>
    </head>
    <body>
        <div class="menu">
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

        <div class="contenido-principal">
            <a href="TablaPeServlet?action=agregar" title="Agregar Peliculas"><i class="bi bi-plus-circle"></i></a>
            <a href="TablaPeServlet?action=ver" title="Refrescar Lista"><i class="bi bi-arrow-clockwise"></i></a>
            <h1>Lista Peliculas!</h1>
            <table>
                <tr>
                    <th>ID_Pelicula</th><th>Nombre_Pelicula</th><th>Duracion</th><th>Genero</th><th>Acciones</th>
                </tr>

                <% 
                    List<Peliculas> listaPeliculas = (List<Peliculas>) session.getAttribute("listaPeliculas");
                    for (Peliculas peliculas : listaPeliculas) {
                %>
                <tr>
                    <td><%= peliculas.getID_Pelicula() %></td>
                    <td><%= peliculas.getNombre_Pelicula() %></td>
                    <td><%= peliculas.getDuracion() %></td>
                    <td><%= peliculas.getGenero() %></td>
                    <td>
                        <%--
                       <a href="EstudianteServlet?action=view&id=<%= estudiante.getId() %> " title="Vista"><i class="bi bi-binoculars"></i></i></i></a>
                       <a href="EstudianteServlet?action=editar&id=<%= estudiante.getId() %> " title="Editar"><i class="bi bi-pencil"></i></i></a>
                        --%>
                        <a href="TablaPeServlet?action=eliminar&id=<%= peliculas.getID_Pelicula() %> " title="Eliminar"><i class="bi bi-trash3"></i></a>
                    </td>
                </tr>
                <% } %>

            </table>
        </div>
    </body>
</html>
