package controllers;

import models.Student;
import play.db.jpa.Transactional;
import play.libs.Json;
import play.mvc.Controller;
import play.mvc.Result;
import services.StudentService;

import java.util.List;

/**
 * Created by Thien on 8/22/2017.
 */
public class StudentController extends Controller{
    //private static final Student defaultStudent = new Student(1, "search again","xxx");

    @Transactional
    public Result searchStudent() {
        String searchKey = request().getQueryString("name");

        StudentService service = new StudentService();
        String formatResult = String.format("%%%s%%", searchKey.toLowerCase());
        List<Student> st = service.search(formatResult);
        return ok(Json.toJson(st));
    }

    public Result template () {
        return ok(views.html.studentTemplate.render());
    }
}
