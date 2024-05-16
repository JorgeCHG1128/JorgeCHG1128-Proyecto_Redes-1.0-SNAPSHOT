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
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Peliculas;
import model.PeliculasJDBC;
import model.Usuario;

/**
 *
 * @author bporr
 */
@WebServlet(name = "TablaPeServlet", urlPatterns = {"/TablaPeServlet"})
public class TablaPeServlet extends HttpServlet {

    PeliculasJDBC peliculasJDBC = new PeliculasJDBC();

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

        session.setAttribute("listaPeliculas", findAllPeliculas());

        if (action != null) {

            if (action.equals("agregar")) {
                request.getRequestDispatcher("AgregarPeliculas.jsp").forward(request, response);
            } else {
                if (action.equals("ver")) {
                    request.getRequestDispatcher("TablaPeliculas.jsp").forward(request, response);
                } else {
                    if (action.equals("ingresar")) {

                            String nombre = request.getParameter("nombre");
                            String duracion = request.getParameter("duracion");
                            String genero = request.getParameter("genero");
                            Peliculas pelicula = new Peliculas();
                            pelicula.setNombre_Pelicula(nombre);
                            pelicula.setDuracion(duracion);
                            pelicula.setGenero(genero);
                            peliculasJDBC.save(pelicula);

                            request.getRequestDispatcher("TablaPeliculas.jsp").forward(request, response);

                    }else {
                        if (action.equals("eliminar")) {
                            long id = Long.parseLong(request.getParameter("id"));
                            Peliculas pelicula = new Peliculas();
                            pelicula.setID_Pelicula(id);
                            peliculasJDBC.delete(pelicula);
                            request.getRequestDispatcher("TablaPeliculas.jsp").forward(request, response);

                        }
                    }

                }
            }

        } else {
            request.getRequestDispatcher("TablaPeliculas.jsp").forward(request, response);
        }

    }

    public List<Peliculas> findAllPeliculas() {
        List<Peliculas> peliculas = peliculasJDBC.findAll();
        return peliculas;
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
