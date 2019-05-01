package Lims.data_base.testDB;

import javax.persistence.*;

/**
 * Created by Вова on 15.03.2016.
 */

@Entity
@Table(name = "group_authorities")
public class GroupAuthorities {



    @Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_roll")
    private int id_roll;

    @Column(name = "group_id")
    private int group_id;

    @Column(name = "roll")
    private String roll;

    public GroupAuthorities(int group_id) {
    }

    public int getId_roll() {
        return id_roll;
    }

    public void setId_roll(int id_roll) {
        this.id_roll = id_roll;
    }

    public int getGroup_id() {
        return group_id;
    }

    public void setGroup_id(int group_id) {
        this.group_id = group_id;
    }

    public String getRoll() {
        return roll;
    }

    public void setRoll(String roll) {
        this.roll = roll;
    }
}
