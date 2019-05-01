package Lims.data_base.testDB;

import javax.persistence.*;

@Entity
@Table(name = "groups")
public class Groups {


    @Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "group_id")
    private int group_id;

    @Column(name = "group_name")
    private String group_name;

    public Groups() {
    }

    public Groups(int group_id) {
    }

    public int getGroup_id() {
        return group_id;
    }

    public void setGroup_id(int group_id) {
        this.group_id = group_id;
    }

    public String getGroup_name() {
        return group_name;
    }

    public void setGroup_name(String group_name) {
        this.group_name = group_name;
    }


}
