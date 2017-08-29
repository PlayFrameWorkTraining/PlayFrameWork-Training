package controllers;

import models.Student;
import play.db.jpa.Transactional;
import play.libs.Json;
import play.mvc.Controller;
import play.mvc.Result;
import services.StudentService;

import java.util.List;

/**
 * Created by Thien on 8/29/2017.
 */
public class StudentController extends Controller{

    @Transactional
    public Result searchStudent() {
        String searchKey = request().getQueryString("name");
        String formatResult = String.format("%%%s%%", searchKey.toLowerCase());

        StudentService service = new StudentService();
        List<Student> st = service.search(formatResult);

        return ok(Json.toJson(st));
    }

    @Transactional
    public Result checkLogin() {
        String username = request().getQueryString("username");
        String password = request().getHeader("password");

        StudentService service = new StudentService();
        List<Student> st = service.checkLogin(username, password);
        return ok(Json.toJson(st));
    }
}
