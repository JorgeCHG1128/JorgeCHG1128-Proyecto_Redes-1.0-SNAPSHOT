/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Peliculas;
import model.Productos;
import model.ProductosJDBC;
import model.Usuario;

/**
 *
 * @author bporr
 */
@WebServlet(name = "TablaProServlet", urlPatterns = {"/TablaProServlet"})
public class TablaProServlet extends HttpServlet {

    ProductosJDBC productosJDBC = new ProductosJDBC();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        String action = request.getParameter("action");

        session.setAttribute("listaProductos", findAllProductos());

        if (action != null) {

            if (action.equals("agregar")) {
                request.getRequestDispatcher("AgregarProductos.jsp").forward(request, response);
            } else {
                if (action.equals("ver")) {
                    request.getRequestDispatcher("TablaProductos.jsp").forward(request, response);
                } else {
                    if (action.equals("ingresar")) {

                        String nombre = request.getParameter("nombre");
                        String descripcion = request.getParameter("descripcion");
                        String precio = request.getParameter("precio");
                        BigDecimal precioBigDecimal = new BigDecimal(precio);
                        int stock = Integer.parseInt(request.getParameter("stock"));

                        Productos productos = new Productos();

                        productos.setNombre_Producto(nombre);
                        productos.setDescripcion(descripcion);
                        productos.setPrecio(precioBigDecimal);
                        productos.setStock(stock);

                        productosJDBC.save(productos);

                        request.getRequestDispatcher("TablaProductos.jsp").forward(request, response);

                    } else {
                        if (action.equals("eliminar")) {
                            long id = Long.parseLong(request.getParameter("id"));
                            Productos productos = new Productos();
                            productos.setID_Producto(id);
                            productosJDBC.delete(productos);
                            request.getRequestDispatcher("TablaProductos.jsp").forward(request, response);

                        }
                    }

                }
            }

        } else {
            request.getRequestDispatcher("TablaProductos.jsp").forward(request, response);
        }

    }

    public List<Productos> findAllProductos() {
        List<Productos> productos = productosJDBC.findAll();
        return productos;
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
