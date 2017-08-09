package controllers;

import play.mvc.*;

public class WelcomeController extends Controller {
    public Result welcome(String name) {
        return ok("Welcome " + name);
    }
}
