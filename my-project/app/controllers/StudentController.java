package controllers;
import modelDB.Student;
import play.data.Form;

import play.db.jpa.Transactional;
import play.mvc.Controller;
import play.mvc.Result;
import services.StudentService;

import javax.persistence.Query;
import java.util.List;

/**
 * Created by Thien on 8/15/2017.
 */
public class StudentController extends Controller{
    @Transactional
    public Result getStudentFromDB() {
        StudentService service = new StudentService();
        List<Student> result = service.getAll();
        Form<Student> studentForm = Form.form(Student.class);
        return ok(views.html.studentView.render(result, studentForm));
    }

    @Transactional
    public Result updateStudent() {
        StudentService service = new StudentService();
        Form<Student> filledInForm = Form.form(Student.class).bindFromRequest();
        int id = filledInForm.get().getStudentId();
        String name = filledInForm.get().getName();
        String phone = filledInForm.get().getPhone();
        boolean check = service.updateStudent(id, name, phone);
        if (check == false) {
            return ok(String.format("received %s", filledInForm.get().getName()));
        }
        List<Student> listStudent = service.getAll();
        return ok(views.html.studentView.render(listStudent, filledInForm));
    }

    @Transactional
    public Result initStudent() {
        Form<Student> studentForm = Form.form(Student.class);
        return ok(views.html.studentAccount.render(studentForm));
    }

    @Transactional
    public Result createStudent() {
        Form<Student> filledInForm = Form.form(Student.class).bindFromRequest();
        StudentService service = new StudentService();
        String name = filledInForm.get().getName();
        String phone = filledInForm.get().getPhone();

        service.createStudent(name, phone);
        return getStudentFromDB();
    }

    @Transactional
    public Result deleteStudent() {
        Form<Student> filledInForm = Form.form(Student.class).bindFromRequest();
        int id = filledInForm.get().getStudentId();

        StudentService service = new StudentService();
        service.deleteStudent(id);
        return getStudentFromDB();
    }
}
