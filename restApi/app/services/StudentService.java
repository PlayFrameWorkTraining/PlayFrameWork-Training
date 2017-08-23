package services;

import models.Student;
import play.db.jpa.JPA;

import java.util.List;

/**
 * Created by Thien on 8/22/2017.
 */
public class StudentService {
    public List<Student> getAll() {
        List<Student> result = JPA.em().createQuery("select c from Student c").getResultList();
        return result;
    }

    public List<Student> search(String name1) {
        List<Student> listStudent = JPA.em().createQuery("select c from Student c where c.name like " + "'" + name1 + "'").getResultList();
        return listStudent;
    }

}
