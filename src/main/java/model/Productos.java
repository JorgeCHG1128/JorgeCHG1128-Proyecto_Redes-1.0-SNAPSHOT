/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.math.BigDecimal;
import java.util.Objects;

/**
 *
 * @author bporr
 */
@Entity
@Table(name = "Productos", schema = "CineNet")
public class Productos {

    private static final long serialVersionUID = 1L;
    @Id
    @Column(name = "ID_Producto")
    private Long ID_Producto;
    @Column(name = "Nombre_Producto")
    private String nombre_Producto;
    @Column(name = "Descripcion")
    private String descripcion;
    @Column(name = "Precio")
    private BigDecimal precio;
    @Column(name = "Stock")
    private int stock;

    public Long getID_Producto() {
        return ID_Producto;
    }

    public void setID_Producto(Long ID_Producto) {
        this.ID_Producto = ID_Producto;
    }

    public String getNombre_Producto() {
        return nombre_Producto;
    }

    public void setNombre_Producto(String nombre_Producto) {
        this.nombre_Producto = nombre_Producto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public BigDecimal getPrecio() {
        return precio;
    }

    public void setPrecio(BigDecimal precio) {
        this.precio = precio;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 37 * hash + Objects.hashCode(this.ID_Producto);
        hash = 37 * hash + Objects.hashCode(this.nombre_Producto);
        hash = 37 * hash + Objects.hashCode(this.descripcion);
        hash = 37 * hash + Objects.hashCode(this.precio);
        hash = 37 * hash + this.stock;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Productos other = (Productos) obj;
        if (this.stock != other.stock) {
            return false;
        }
        if (!Objects.equals(this.nombre_Producto, other.nombre_Producto)) {
            return false;
        }
        if (!Objects.equals(this.descripcion, other.descripcion)) {
            return false;
        }
        if (!Objects.equals(this.ID_Producto, other.ID_Producto)) {
            return false;
        }
        return Objects.equals(this.precio, other.precio);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Productos{");
        sb.append("ID_Producto=").append(ID_Producto);
        sb.append(", Nombre_Producto=").append(nombre_Producto);
        sb.append(", Descripcion=").append(descripcion);
        sb.append(", Precio=").append(precio);
        sb.append(", Stock=").append(stock);
        sb.append('}');
        return sb.toString();
    }
}
