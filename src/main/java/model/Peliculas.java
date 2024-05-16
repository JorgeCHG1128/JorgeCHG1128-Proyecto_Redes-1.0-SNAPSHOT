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
@Table(name = "Peliculas", schema = "CineNet")
public class Peliculas {

    private static final long serialVersionUID = 1L;
    @Id
    @Column(name = "ID_Pelicula")
    private Long ID_Pelicula;
    @Column(name = "Nombre_Pelicula")
    private String nombre_Pelicula;
    @Column(name = "Duracion")
    private String duracion;
    @Column(name = "Genero")
    private String genero;

    public Long getID_Pelicula() {
        return ID_Pelicula;
    }

    public void setID_Pelicula(Long ID_Pelicula) {
        this.ID_Pelicula = ID_Pelicula;
    }

    public String getNombre_Pelicula() {
        return nombre_Pelicula;
    }

    public void setNombre_Pelicula(String nombre_Pelicula) {
        this.nombre_Pelicula = nombre_Pelicula;
    }

    public String getDuracion() {
        return duracion;
    }

    public void setDuracion(String duracion) {
        this.duracion = duracion;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 79 * hash + Objects.hashCode(this.ID_Pelicula);
        hash = 79 * hash + Objects.hashCode(this.nombre_Pelicula);
        hash = 79 * hash + Objects.hashCode(this.duracion);
        hash = 79 * hash + Objects.hashCode(this.genero);
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
        final Peliculas other = (Peliculas) obj;
        if (!Objects.equals(this.nombre_Pelicula, other.nombre_Pelicula)) {
            return false;
        }
        if (!Objects.equals(this.duracion, other.duracion)) {
            return false;
        }
        if (!Objects.equals(this.genero, other.genero)) {
            return false;
        }
        return Objects.equals(this.ID_Pelicula, other.ID_Pelicula);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Peliculas{");
        sb.append("ID_Pelicula=").append(ID_Pelicula);
        sb.append(", Nombre_Pelicula=").append(nombre_Pelicula);
        sb.append(", Duracion=").append(duracion);
        sb.append(", Genero=").append(genero);
        sb.append('}');
        return sb.toString();
    }

}
