/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.math.BigDecimal;
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
public class ProductosJDBC {

    Connection con = null;

    public ProductosJDBC() {
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

    public Productos save(Productos productos) {
        String sql = "INSERT INTO Productos (Nombre_producto, Descripcion, Precio, Stock) VALUES (?, ?, ?, ?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, productos.getNombre_Producto());
            ps.setString(2, productos.getDescripcion());
            ps.setBigDecimal(3, (productos.getPrecio())); 
            ps.setInt(4, (productos.getStock())); 

            int rowcount = ps.executeUpdate();
            if (rowcount == 1) {
                ResultSet rs = ps.getGeneratedKeys();
                while (rs.next()) {
                    productos.setID_Producto(rs.getLong(1));
                }
            } else {
                throw new SQLException("El 'insert' no ocurrio, valor de: " + rowcount);
            }
            //con.close();

        } catch (SQLException ex) {
            System.err.println("ERROR:" + ex.getMessage());
        }
        return productos;
    }

    public List<Productos> findAll() {
        List<Productos> productos = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Productos pro";
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                productos.add(establecerProductos(rs));
            }
            return productos;
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return productos;
    }

    private Productos establecerProductos(ResultSet rs) {
        Productos productos = new Productos();
        try {
            productos.setID_Producto(rs.getLong(1));
            productos.setNombre_Producto(rs.getString(2));
            productos.setDescripcion(rs.getString(3));
            productos.setPrecio(rs.getBigDecimal(4));
            productos.setStock(rs.getInt(5));

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return productos;

    }

    public Productos delete(Productos productos) {

        String sql = "DELETE FROM Productos WHERE ID_Producto = ?";
        try {

            PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setLong(1, productos.getID_Producto());
            int rowcount = ps.executeUpdate();
            if (rowcount == 1) {
                ResultSet rs = ps.getGeneratedKeys();
                while (rs.next()) {
                    productos.setID_Producto(rs.getLong(1));
                }
            } else {
                throw new SQLException("El 'delete' no ocurrio, valor de: " + rowcount);

            }

        } catch (SQLException ex) {
            System.err.println("ERROR:" + ex.getMessage());
        }
        return productos;

    }

    public Productos actualizarPelicula(Productos productos) {
        String sql = "UPDATE Productos SET Nombre_Producto=?, Descripcion=?, Precio=?, Stock=? WHERE ID_Producto=?";

        try {
            PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, productos.getNombre_Producto());
            ps.setString(2, productos.getDescripcion());
            //ps.setString(3, productos.getPrecio());
            ps.setBigDecimal(3, (productos.getPrecio())); 
            ps.setInt(4, (productos.getStock())); 

            int rowcount = ps.executeUpdate();

            //ps.close();
            //con.close();
            if (rowcount == 1) {
                ResultSet rs = ps.getGeneratedKeys();
                while (rs.next()) {
                    productos.setID_Producto(rs.getLong(1));
                }
            } else {
                throw new SQLException("El 'update' no ocurrio, valor de: " + rowcount);

            }

        } catch (SQLException ex) {
            System.err.println("ERROR:" + ex.getMessage());
        }
        return productos;
    }
}
