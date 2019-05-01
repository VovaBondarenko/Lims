package Lims.data_base.entity;

import javax.persistence.*;

/**
 * Created by Vova on 27.03.2016.
 */
@Entity
@Table(name = "group_authorities")
public class GroupAuthorities {
    private int idPost;
    private long groupId;
    private String authority;
    private int idRoll;
    private String roll;

    @Id
    @Column(name = "id_post")
    public int getIdPost() {
        return idPost;
    }

    public void setIdPost(int idPost) {
        this.idPost = idPost;
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
    @Column(name = "authority")
    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    @Basic
    @Column(name = "id_roll")
    public int getIdRoll() {
        return idRoll;
    }

    public void setIdRoll(int idRoll) {
        this.idRoll = idRoll;
    }

    @Basic
    @Column(name = "roll")
    public String getRoll() {
        return roll;
    }

    public void setRoll(String roll) {
        this.roll = roll;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        GroupAuthorities that = (GroupAuthorities) o;

        if (idPost != that.idPost) return false;
        if (groupId != that.groupId) return false;
        if (idRoll != that.idRoll) return false;
        if (authority != null ? !authority.equals(that.authority) : that.authority != null) return false;
        if (roll != null ? !roll.equals(that.roll) : that.roll != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idPost;
        result = 31 * result + (int) (groupId ^ (groupId >>> 32));
        result = 31 * result + (authority != null ? authority.hashCode() : 0);
        result = 31 * result + idRoll;
        result = 31 * result + (roll != null ? roll.hashCode() : 0);
        return result;
    }
}
