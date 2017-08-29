package controllers;

import models.Student;
import play.db.jpa.Transactional;
import play.mvc.*;

import services.StudentService;
import views.html.*;

import java.util.List;

/**
 * This controller contains an action to handle HTTP requests
 * to the application's home page.
 */
public class HomeController extends Controller {

    /**
     * An action that renders an HTML page with a welcome message.
     * The configuration in the <code>routes</code> file means that
     * this method will be called when the application receives a
     * <code>GET</code> request with a path of <code>/</code>.
     */
    @Transactional
    public Result index() {
        StudentService service = new StudentService();
        List<Student> st = service.getAll();
        return ok(views.html.student.render(st));
    }

}