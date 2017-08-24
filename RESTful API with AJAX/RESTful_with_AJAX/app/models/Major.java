package models;

import javax.persistence.*;
import java.util.Collection;

@Entity
public class Major {
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

        Major major = (Major) o;

        if (id != major.id) return false;
        if (name != null ? !name.equals(major.name) : major.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "majorByMajorId")
    public Collection<MajorHasSubject> getMajorHasSubjectsById() {
        return majorHasSubjectsById;
    }

    public void setMajorHasSubjectsById(Collection<MajorHasSubject> majorHasSubjectsById) {
        this.majorHasSubjectsById = majorHasSubjectsById;
    }
}
