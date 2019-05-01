package Lims.data_base.entity;

import javax.persistence.*;

/**
 * Created by Vova on 27.03.2016.
 */
@Entity
@Table(name = "group_members")
public class GroupMembers {
    private long id;
    private String username;
    private long groupId;
    private int membersId;

    @Id
    @Column(name = "id")
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "username")
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "group_id")
    public long getGroupId() {
        return groupId;
    }

    public void setGroupId(long groupId) {
        this.groupId = groupId;
    }

    @Basic
    @Column(name = "members_id")
    public int getMembersId() {
        return membersId;
    }

    public void setMembersId(int membersId) {
        this.membersId = membersId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        GroupMembers that = (GroupMembers) o;

        if (id != that.id) return false;
        if (groupId != that.groupId) return false;
        if (membersId != that.membersId) return false;
        if (username != null ? !username.equals(that.username) : that.username != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (username != null ? username.hashCode() : 0);
        result = 31 * result + (int) (groupId ^ (groupId >>> 32));
        result = 31 * result + membersId;
        return result;
    }
}
