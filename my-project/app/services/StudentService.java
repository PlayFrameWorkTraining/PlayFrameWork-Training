package services;
import modelDB.Student;
import play.db.jpa.JPA;
import play.db.jpa.Transactional;

import javax.persistence.EntityManager;
import java.util.List;


/**
 * Created by Thien on 8/15/2017.
 */
public class StudentService {

    public List<Student> getAll() {
        List<Student> result = JPA.em().createQuery("SELECT c FROM Student c ").getResultList();
        return result;
    }


    public boolean updateStudent(int id, String name, String phone) {
        int row = JPA.em().createQuery("UPDATE Student c SET c.phone='" +phone+ "',c.name='" +name+ "' where c.id="+id).executeUpdate();
        if (row > 0){
            return true;
        }
        return false;
    }
    public void createStudent(String name, String phone) {
        Student st = new Student(name, phone);
        EntityManager em = JPA.em();
        em.persist(st);
    }

    public void deleteStudent(int id) {
        EntityManager em = JPA.em();
        Student st = em.find(Student.class, id);
        em.remove(st);
    }

}
