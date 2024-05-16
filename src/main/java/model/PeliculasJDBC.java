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
public class PeliculasJDBC {
    
Connection con = null;

    public PeliculasJDBC() {
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

    public Peliculas save(Peliculas pelicula) {
        String sql = "INSERT INTO Peliculas (Nombre_Pelicula, Duracion, Genero) VALUES (?, ?, ?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, pelicula.getNombre_Pelicula());
            ps.setString(2, pelicula.getDuracion());
            ps.setString(3, pelicula.getGenero());

            int rowcount = ps.executeUpdate();
            if (rowcount == 1) {
                ResultSet rs = ps.getGeneratedKeys();
                while (rs.next()) {
                    pelicula.setID_Pelicula(rs.getLong(1));
                }
            } else {
                throw new SQLException("El 'insert' no ocurrio, valor de: " + rowcount);
            }
            //con.close();

        } catch (SQLException ex) {
            System.err.println("ERROR:" + ex.getMessage());
        }
        return pelicula;
    }

    public List<Peliculas> findAll() {
        List<Peliculas> peliculas = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Peliculas pe";
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                peliculas.add(establecerPeliculas(rs));
            }
            return peliculas;
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return peliculas;
    }

    private Peliculas establecerPeliculas(ResultSet rs) {
        Peliculas pelicula = new Peliculas();
        try {
            pelicula.setID_Pelicula(rs.getLong(1));
            pelicula.setNombre_Pelicula(rs.getString(2));
            pelicula.setDuracion(rs.getString(3));
            pelicula.setGenero(rs.getString(4));


        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return pelicula;

    }

    public Peliculas delete(Peliculas pelicula) {

        String sql = "DELETE FROM Peliculas WHERE ID_Pelicula = ?";
        try {

            PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setLong(1, pelicula.getID_Pelicula());
            int rowcount = ps.executeUpdate();
            if (rowcount == 1) {
                ResultSet rs = ps.getGeneratedKeys();
                while (rs.next()) {
                    pelicula.setID_Pelicula(rs.getLong(1));
                }
            } else {
                throw new SQLException("El 'delete' no ocurrio, valor de: " + rowcount);

            }

        } catch (SQLException ex) {
            System.err.println("ERROR:" + ex.getMessage());
        }
        return pelicula;

    }

    public Peliculas actualizarPelicula(Peliculas pelicula) {
        String sql = "UPDATE Peliculas SET Nombre_Pelicula=?, Duracion=?, Genero=? WHERE ID_Pelicula=?";

        try {
            PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, pelicula.getNombre_Pelicula());
            ps.setString(2, pelicula.getDuracion());
            ps.setString(3, pelicula.getGenero());

            int rowcount = ps.executeUpdate();

            //ps.close();
            //con.close();

            if (rowcount == 1) {
                ResultSet rs = ps.getGeneratedKeys();
                while (rs.next()) {
                    pelicula.setID_Pelicula(rs.getLong(1));
                }
            } else {
                throw new SQLException("El 'update' no ocurrio, valor de: " + rowcount);

            }

        } catch (SQLException ex) {
            System.err.println("ERROR:" + ex.getMessage());
        }
        return pelicula;
    }
}
