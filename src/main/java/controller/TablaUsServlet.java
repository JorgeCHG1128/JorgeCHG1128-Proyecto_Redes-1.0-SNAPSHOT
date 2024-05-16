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
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Usuario;
import model.UsuarioJDBC;

/**
 *
 * @author bporr
 */
@WebServlet(name = "TablaUsServlet", urlPatterns = {"/TablaUsServlet"})
public class TablaUsServlet extends HttpServlet {

    UsuarioJDBC usuarioJDBC = new UsuarioJDBC();

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
        //response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        String action = request.getParameter("action");

        session.setAttribute("listaUsuarios", findAllUsuarios());

        if (action != null) {

            if (action.equals("agregar")) {
                request.getRequestDispatcher("AgregarUsuarios.jsp").forward(request, response);
            } else {
                if (action.equals("ver")) {
                    request.getRequestDispatcher("TablaUsuarios.jsp").forward(request, response);
                } else {
                    if (action.equals("ingresar")) {
                        try {
                            String email = request.getParameter("email");
                            String password = request.getParameter("password");
                            String passEncrip = convertirdorHexMD5(password);
                            String rol = request.getParameter("rol");
                            Usuario usuario = new Usuario();
                            usuario.setEmail(email);
                            usuario.setPassword(passEncrip);
                            usuario.setRol(rol);
                            usuarioJDBC.save(usuario);

                            request.getRequestDispatcher("TablaUsuarios.jsp").forward(request, response);

                        } catch (NoSuchAlgorithmException ex) {
                            Logger.getLogger(TablaUsServlet.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    } else {
                        if (action.equals("eliminar")) {
                            long id = Long.parseLong(request.getParameter("id"));
                            Usuario usuario = new Usuario();
                            usuario.setID_Usuario(id);
                            usuarioJDBC.delete(usuario);
                            request.getRequestDispatcher("TablaUsuarios.jsp").forward(request, response);

                        }
                    }

                }
            }

        } else {
            request.getRequestDispatcher("TablaUsuarios.jsp").forward(request, response);
        }

    }

    public List<Usuario> findAllUsuarios() {
        List<Usuario> usuarios = usuarioJDBC.findAll();
        return usuarios;
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

    public String convertirdorHexMD5(String str) throws NoSuchAlgorithmException {

        MessageDigest md = MessageDigest.getInstance("MD5");
        byte[] messageDigest = md.digest(str.getBytes());

        StringBuilder hexString = new StringBuilder();
        for (byte b : messageDigest) {
            hexString.append(String.format("%02x", b));

        }
        return hexString.toString();
    }
}
