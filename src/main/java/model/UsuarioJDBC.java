/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author bporr
 */
public class UsuarioJDBC {
    
    Connection con = null;

    public UsuarioJDBC() {
        try {
            ConexionBD conexionBD = ConexionBD.getConexionBD();
            con = conexionBD.getCon();

        } catch (Exception ex) {
            System.err.println(ex.getMessage());
        }
    }

    public Connection getCon() {
        return con;
    }

    public void closeConexion() {
        try {
            con.close();
        } catch (SQLException e) {

        }
    }

    public Usuario save(Usuario usuario) {
        String sql = "INSERT INTO USUARIOS (Email, Password, Rol) VALUES (?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, usuario.getEmail());
            ps.setString(2, usuario.getPassword());
            ps.setString(3, usuario.getRol());
            int rowcount = ps.executeUpdate();
            if (rowcount == 1) {
                ResultSet rs = ps.getGeneratedKeys();
                while (rs.next()) {
                    usuario.setID_Usuario(rs.getLong(1));
                }
            } else {
                throw new SQLException("El 'insert' no ocurrio, valor de: " + rowcount);
            }
            //con.close();

        } catch (SQLException ex) {
            System.err.println("ERROR:" + ex.getMessage());
        }
        return usuario;
    }

    public Usuario findByEmailAndPass(String email, String pass) throws SQLException {
        Usuario usuario = null;
        String sql = "SELECT * FROM usuarios u WHERE u.email = ? and u.password = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, email);
        ps.setString(2, pass);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            usuario = establecerUsuario(rs);
        }
        return usuario;
    }
    
        public List<Usuario> findAll() {
        List<Usuario> usuarios = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Usuarios u";
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                usuarios.add(establecerUsuario(rs));
            }
            return usuarios;
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return usuarios;
    }


    private Usuario establecerUsuario(ResultSet rs) {
        Usuario usuario = new Usuario();
        try {
            usuario.setID_Usuario(rs.getLong(1));
            usuario.setEmail(rs.getString(2));
            usuario.setPassword(rs.getString(3));
            usuario.setRol(rs.getString(4));
    
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return usuario;

    }
    
        public Usuario delete(Usuario usuario) {

        String sql = "DELETE FROM Usuarios WHERE ID_Usuario = ?";
        try {

            PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setLong(1, usuario.getID_Usuario());
            int rowcount = ps.executeUpdate();
            if (rowcount == 1) {
                ResultSet rs = ps.getGeneratedKeys();
                while (rs.next()) {
                    usuario.setID_Usuario(rs.getLong(1));
                }
            } else {
                throw new SQLException("El 'delete' no ocurrio, valor de: " + rowcount);

            }

        } catch (SQLException ex) {
            System.err.println("ERROR:" + ex.getMessage());
        }
        return usuario;

    }
}