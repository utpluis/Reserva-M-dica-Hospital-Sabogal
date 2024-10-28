package logica;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Paciente extends Persona implements Serializable {

    //private int id_paciente;
    private boolean seguro_social;
    private String tiposangre;
    @OneToOne
    private Responsable unResponsable;
    @OneToMany(mappedBy = "pacien")
    private List<Turno> listaTurnos;

    public Paciente() {
    }

    public Paciente(boolean seguro_social, String tiposangre, Responsable unResponsable, List<Turno> listaTurnos, int id, String dni, String nombre, String apellido, String telefono, String direccion, Date fecha_nac) {
        super(id, dni, nombre, apellido, telefono, direccion, fecha_nac);
        this.seguro_social = seguro_social;
        this.tiposangre = tiposangre;
        this.unResponsable = unResponsable;
        this.listaTurnos = listaTurnos;
    }

    public boolean isSeguro_social() {
        return seguro_social;
    }

    public void setSeguro_social(boolean seguro_social) {
        this.seguro_social = seguro_social;
    }

    public String getTiposangre() {
        return tiposangre;
    }

    public void setTiposangre(String tiposangre) {
        this.tiposangre = tiposangre;
    }

    public Responsable getUnResponsable() {
        return unResponsable;
    }

    public void setUnResponsable(Responsable unResponsable) {
        this.unResponsable = unResponsable;
    }

    public List<Turno> getListaTurnos() {
        return listaTurnos;
    }

    public void setListaTurnos(List<Turno> listaTurnos) {
        this.listaTurnos = listaTurnos;
    }

}
