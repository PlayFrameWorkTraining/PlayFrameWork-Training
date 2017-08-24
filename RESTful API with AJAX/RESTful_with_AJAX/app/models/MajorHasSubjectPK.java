package models;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

public class MajorHasSubjectPK implements Serializable {
    private int majorId;
    private int subjectId;

    @Column(name = "major_id", nullable = false)
    @Id
    public int getMajorId() {
        return majorId;
    }

    public void setMajorId(int majorId) {
        this.majorId = majorId;
    }

    @Column(name = "subject_id", nullable = false)
    @Id
    public int getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(int subjectId) {
        this.subjectId = subjectId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MajorHasSubjectPK that = (MajorHasSubjectPK) o;

        if (majorId != that.majorId) return false;
        if (subjectId != that.subjectId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = majorId;
        result = 31 * result + subjectId;
        return result;
    }
}
