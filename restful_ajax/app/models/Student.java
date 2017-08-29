package models;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by Thien on 8/29/2017.
 */
@Entity
public class Student {
    private int id;
    private String phone;
    private int role;
    private String username;
    private String password;
    private Collection<StudentHasSubjects> studentHasSubjectssById;

    public Student(int id, String phone, String username) {
        this.id = id;
        this.phone = phone;
        this.username = username;
    }
    public Student(){

    }

    @Id
    @Column(name = "Id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "Phone", nullable = true, length = 45)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "Role", nullable = false)
    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Basic
    @Column(name = "Username", nullable = false, length = 45)
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "Password", nullable = false, length = 45)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Student student = (Student) o;

        if (id != student.id) return false;
        if (role != student.role) return false;
        if (phone != null ? !phone.equals(student.phone) : student.phone != null) return false;
        if (username != null ? !username.equals(student.username) : student.username != null) return false;
        if (password != null ? !password.equals(student.password) : student.password != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + role;
        result = 31 * result + (username != null ? username.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "studentByStudentId")
    public Collection<StudentHasSubjects> getStudentHasSubjectssById() {
        return studentHasSubjectssById;
    }

    public void setStudentHasSubjectssById(Collection<StudentHasSubjects> studentHasSubjectssById) {
        this.studentHasSubjectssById = studentHasSubjectssById;
    }
}
