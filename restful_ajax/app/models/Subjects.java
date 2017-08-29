package models;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by Thien on 8/29/2017.
 */
@Entity
public class Subjects {
    private int code;
    private String name;
    private Collection<StudentHasSubjects> studentHasSubjectssByCode;

    @Id
    @Column(name = "code", nullable = false)
    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    @Basic
    @Column(name = "Name", nullable = true, length = 45)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Subjects subjects = (Subjects) o;

        if (code != subjects.code) return false;
        if (name != null ? !name.equals(subjects.name) : subjects.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = code;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "subjectsBySubjectsCode")
    public Collection<StudentHasSubjects> getStudentHasSubjectssByCode() {
        return studentHasSubjectssByCode;
    }

    public void setStudentHasSubjectssByCode(Collection<StudentHasSubjects> studentHasSubjectssByCode) {
        this.studentHasSubjectssByCode = studentHasSubjectssByCode;
    }
}
