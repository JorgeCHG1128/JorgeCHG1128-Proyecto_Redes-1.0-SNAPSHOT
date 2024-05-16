/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.util.Objects;

/**
 *
 * @author bporr
 */
@Entity
@Table(name = "Pais", schema = "CineNet")
public class Pais {

    private static final long serialVersionUID = 1L;
    @Id
    @Column(name = "ID_Pais")
    private Long ID_Pais;
    @Column(name = "Nombre_Pais")
    private String nombre_Pais;

    public Long getID_Pais() {
        return ID_Pais;
    }

    public void setID_Pais(Long ID_Pais) {
        this.ID_Pais = ID_Pais;
    }

    public String getNombre_Pais() {
        return nombre_Pais;
    }

    public void setNombre_Pais(String nombre_Pais) {
        this.nombre_Pais = nombre_Pais;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 29 * hash + Objects.hashCode(this.ID_Pais);
        hash = 29 * hash + Objects.hashCode(this.nombre_Pais);
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
        final Pais other = (Pais) obj;
        if (!Objects.equals(this.nombre_Pais, other.nombre_Pais)) {
            return false;
        }
        return Objects.equals(this.ID_Pais, other.ID_Pais);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Pais{");
        sb.append("ID_Pais=").append(ID_Pais);
        sb.append(", Nombre_Pais=").append(nombre_Pais);
        sb.append('}');
        return sb.toString();
    }

}
