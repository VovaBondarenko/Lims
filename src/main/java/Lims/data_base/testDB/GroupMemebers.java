package Lims.data_base.testDB;

import javax.persistence.*;

/**
 * Created by Вова on 15.03.2016.
 */
@Entity
@Table(name = "group_members")
public class GroupMemebers {

    @Id
    @Column(name = "members_id")
//    @GeneratedValue(strategy = GenerationType.AUTO)
    private int members_id;

    @Column(name = "username")
    private String username;

    @Column(name = "group_id")
    private int group_id;


    public GroupMemebers(String username) {
    }

    public int getMembers_id() {
        return members_id;
    }

    public void setMembers_id(int members_id) {
        this.members_id = members_id;
    }

    public int getGroup_id() {
        return group_id;
    }

    public void setGroup_id(int group_id) {
        this.group_id = group_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
