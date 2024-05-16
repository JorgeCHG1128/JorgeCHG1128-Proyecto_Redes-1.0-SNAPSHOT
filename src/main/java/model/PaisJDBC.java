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
public class PaisJDBC {
 
    Connection con = null;

    public PaisJDBC() {
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

    public Pais save(Pais pais) {
        String sql = "INSERT INTO Pais (Nombre_Pais) VALUES (?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, pais.getNombre_Pais());

            int rowcount = ps.executeUpdate();
            if (rowcount == 1) {
                ResultSet rs = ps.getGeneratedKeys();
                while (rs.next()) {
                    pais.setID_Pais(rs.getLong(1));
                }
            } else {
                throw new SQLException("El 'insert' no ocurrio, valor de: " + rowcount);
            }
            con.close();

        } catch (SQLException ex) {
            System.err.println("ERROR:" + ex.getMessage());
        }
        return pais;
    }

    public List<Pais> findAll() {
        List<Pais> paises = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Pais p";
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                paises.add(establecerPais(rs));
            }
            return paises;
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return paises;
    }

    private Pais establecerPais(ResultSet rs) {
        Pais pais = new Pais();
        try {
            pais.setID_Pais(rs.getLong(1));
            pais.setNombre_Pais(rs.getString(2));


        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return pais;

    }

    public Pais delete(Pais pais) {

        String sql = "DELETE FROM Pais WHERE ID_Pais = ?";
        try {

            PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setLong(1, pais.getID_Pais());
            int rowcount = ps.executeUpdate();
            if (rowcount == 1) {
                ResultSet rs = ps.getGeneratedKeys();
                while (rs.next()) {
                    pais.setID_Pais(rs.getLong(1));
                }
            } else {
                throw new SQLException("El 'delete' no ocurrio, valor de: " + rowcount);

            }

        } catch (SQLException ex) {
            System.err.println("ERROR:" + ex.getMessage());
        }
        return pais;

    }

    public Pais actualizarPais(Pais pais) {
        String sql = "UPDATE Pais SET Nombre_Pais=? WHERE ID_Pelicula=?";

        try {
            PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, pais.getNombre_Pais());

            int rowcount = ps.executeUpdate();

            //ps.close();
            //con.close();

            if (rowcount == 1) {
                ResultSet rs = ps.getGeneratedKeys();
                while (rs.next()) {
                    pais.setID_Pais(rs.getLong(1));
                }
            } else {
                throw new SQLException("El 'update' no ocurrio, valor de: " + rowcount);

            }

        } catch (SQLException ex) {
            System.err.println("ERROR:" + ex.getMessage());
        }
        return pais;
    }
}
