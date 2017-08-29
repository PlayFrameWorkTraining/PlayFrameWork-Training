package models;

import javax.persistence.*;

/**
 * Created by Thien on 8/29/2017.
 */
@Entity
@Table(name = "student_has_subjects", schema = "studentinfo", catalog = "")
public class StudentHasSubjects {
    private int id;
    private Student studentByStudentId;
    private Subjects subjectsBySubjectsCode;

    @Id
    @Column(name = "ID", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        StudentHasSubjects that = (StudentHasSubjects) o;

        if (id != that.id) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return id;
    }

    @ManyToOne
    @JoinColumn(name = "student_Id", referencedColumnName = "Id", nullable = false)
    public Student getStudentByStudentId() {
        return studentByStudentId;
    }

    public void setStudentByStudentId(Student studentByStudentId) {
        this.studentByStudentId = studentByStudentId;
    }

    @ManyToOne
    @JoinColumn(name = "subjects_code", referencedColumnName = "code", nullable = false)
    public Subjects getSubjectsBySubjectsCode() {
        return subjectsBySubjectsCode;
    }

    public void setSubjectsBySubjectsCode(Subjects subjectsBySubjectsCode) {
        this.subjectsBySubjectsCode = subjectsBySubjectsCode;
    }
}
