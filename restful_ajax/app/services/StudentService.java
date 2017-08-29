package services;

import models.Student;
import play.db.jpa.JPA;

import java.util.List;

/**
 * Created by Thien on 8/29/2017.
 */
public class StudentService {
    public List<Student> getAll() {
        List<Student> result = JPA.em().createQuery("select c from Student c").getResultList();
        return result;
    }

    public List<Student> search(String name) {
        List<Student> listSt = JPA.em().createQuery("select c from Student c where c.username like " + "'" + name + "'").getResultList();
        return listSt;
    }

    public List<Student> checkLogin(String username,String password) {
        List<Student> result = JPA.em().createQuery("select c from Student c where c.username= " + "'" + username + "'" +"and c.password=" + "'" + password + "'").getResultList();
        return result;
    }

}
