package spin.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Type;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "INVITATION")
public class Invitation {

    @Id
    @Column(name = "ID", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotNull
    @Size(min = 3, max = 50)
    @Column(name = "NAME", nullable = false)
    private String name;

    @NotNull
    @Size(min = 3, max = 100)
    @Column(name = "EMAIL", nullable = false)
    private String email;

    @NotNull
    @Size(min = 3, max = 20)
    @Column(name = "PHONE", nullable = false)
    private String phone;

    @NotNull
    @Size(min = 3, max = 200)
    @Column(name = "ADDRESS", nullable = false)
    private String address;

    @NotNull
    @Size(min = 1, max = 1)
    @Column(name = "RELATIONTYPE", nullable = false)
    private String relationType;

    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "TOTALNUM", nullable = false)
    private String totalNum;

    @Size(max = 100)
    @Column(name = "CHILDCHAIRNUM")
    private String childChairNum;

    @Size(max = 100)
    @Column(name = "VEGNUM")
    private String vegNum;

    @Size(max = 3000)
    @Column(name = "COMMENTS")
    private String comments;

    @Column(name = "JOINING_DATE")
    private String joiningDate;
    
    @Column(name = "STATUS")
    private String status;

    @NotNull
    @Size(min = 1, max = 1)
    @Column(name = "ATTENDTYPE", nullable = false)
    private String attendType;
    
    @Override
    public String toString() {
        return "(name:" + name + " ,email:" + email + " ,phone:" + phone + " ,address:" + address + " ,relationType:"
                + relationType + " ,totalNum:" + totalNum + " ,childChairNum:" + childChairNum + " ,vegNum:" + vegNum + " ,attendType" + attendType +
                " ,comments:" + comments + ")";
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRelationType() {
        return relationType;
    }

    public void setRelationType(String relationType) {
        this.relationType = relationType;
    }

    public String getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(String totalNum) {
        this.totalNum = totalNum;
    }

    public String getChildChairNum() {
        return childChairNum;
    }

    public void setChildChairNum(String childChairNum) {
        this.childChairNum = childChairNum;
    }

    public String getVegNum() {
        return vegNum;
    }

    public void setVegNum(String vegNum) {
        this.vegNum = vegNum;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getJoiningDate() {
        return joiningDate;
    }

    public void setJoiningDate(String joiningDate) {
        this.joiningDate = joiningDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAttendType() {
        return attendType;
    }

    public void setAttendType(String attendType) {
        this.attendType = attendType;
    }
}