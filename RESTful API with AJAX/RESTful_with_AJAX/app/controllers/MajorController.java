package controllers;

import play.db.jpa.Transactional;
import play.libs.Json;
import play.mvc.Controller;
import play.mvc.Result;
import services.IServices;
import services.MajorServices;
import views.html.major;

import java.util.List;

public class MajorController extends Controller {

    @Transactional
    public Result index() {
        IServices services = new MajorServices();
        List majors = services.getAll();
        return ok(major.render(majors));
    }

    @Transactional
    public Result search() {
        String input = String.format("%%%s%%", request().getQueryString("search_major"));
        IServices services = new MajorServices();
        List result = services.searchByName(input);
        return ok(Json.toJson(result));
    }
}
