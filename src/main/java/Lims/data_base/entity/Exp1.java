package Lims.data_base.entity;

import javax.persistence.*;

/**
 * Created by Vova on 27.03.2016.
 */
@Entity
@Table(name = "exp1")
public class Exp1 {
    private int idNote;
    private String user;
    private String material1;
    private String material2;
    private String material3;

    @Id
    @Column(name = "id_note")
    public int getIdNote() {
        return idNote;
    }

    public void setIdNote(int idNote) {
        this.idNote = idNote;
    }

    @Basic
    @Column(name = "user")
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    @Basic
    @Column(name = "material1")
    public String getMaterial1() {
        return material1;
    }

    public void setMaterial1(String material1) {
        this.material1 = material1;
    }

    @Basic
    @Column(name = "material2")
    public String getMaterial2() {
        return material2;
    }

    public void setMaterial2(String material2) {
        this.material2 = material2;
    }

    @Basic
    @Column(name = "material3")
    public String getMaterial3() {
        return material3;
    }

    public void setMaterial3(String material3) {
        this.material3 = material3;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Exp1 that = (Exp1) o;

        if (idNote != that.idNote) return false;
        if (user != null ? !user.equals(that.user) : that.user != null) return false;
        if (material1 != null ? !material1.equals(that.material1) : that.material1 != null) return false;
        if (material2 != null ? !material2.equals(that.material2) : that.material2 != null) return false;
        if (material3 != null ? !material3.equals(that.material3) : that.material3 != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idNote;
        result = 31 * result + (user != null ? user.hashCode() : 0);
        result = 31 * result + (material1 != null ? material1.hashCode() : 0);
        result = 31 * result + (material2 != null ? material2.hashCode() : 0);
        result = 31 * result + (material3 != null ? material3.hashCode() : 0);
        return result;
    }
}
