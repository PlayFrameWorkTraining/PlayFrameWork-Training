package models;

import javax.persistence.*;
import java.util.Collection;

@Entity
public class Subject {
    private int id;
    private String name;
    private Collection<MajorHasSubject> majorHasSubjectsById;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name", nullable = false, length = 45)
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

        Subject subject = (Subject) o;

        if (id != subject.id) return false;
        if (name != null ? !name.equals(subject.name) : subject.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "subjectBySubjectId")
    public Collection<MajorHasSubject> getMajorHasSubjectsById() {
        return majorHasSubjectsById;
    }

    public void setMajorHasSubjectsById(Collection<MajorHasSubject> majorHasSubjectsById) {
        this.majorHasSubjectsById = majorHasSubjectsById;
    }
}
