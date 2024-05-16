<%-- 
    Document   : TablaProductos
    Created on : 3 abr. 2024, 11:54:17
    Author     : bporr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import= "model.Productos" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/Tablas.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
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
            <a href="TablaProServlet?action=agregar" title="Agregar estudiantes"><i class="bi bi-plus-circle"></i></a>
            <a href="TablaProServlet?action=ver" title="Refrescar Lista"><i class="bi bi-arrow-clockwise"></i></a>
            <h1>Lista Usuarios!</h1>
            <table>
                <tr>
                    <th>ID_Producto</th><th>Nombre_Producto</th><th>Descripcion</th><th>Precio</th><th>Stock</th><th>Acciones</th>
                </tr>

                <% 
                    List<Productos> listaProductos = (List<Productos>) session.getAttribute("listaProductos");
                    for (Productos productos : listaProductos) {
                %>
                <tr>
                    <td><%= productos.getID_Producto() %></td>
                    <td><%= productos.getNombre_Producto() %></td>
                    <td><%= productos.getDescripcion() %></td>
                    <td><%= productos.getPrecio() %></td>
                    <td><%= productos.getStock() %></td>
                    <td>
                        <%--
                       <a href="EstudianteServlet?action=view&id=<%= estudiante.getId() %> " title="Vista"><i class="bi bi-binoculars"></i></i></i></a>
                       <a href="EstudianteServlet?action=editar&id=<%= estudiante.getId() %> " title="Editar"><i class="bi bi-pencil"></i></i></a>
                        --%>
                       <a href="TablaProServlet?action=eliminar&id=<%= productos.getID_Producto() %> " title="Eliminar"><i class="bi bi-trash3"></i></a>

                    </td>
                </tr>
                <% } %>

            </table>
        </div>
    </body>
</html>
