package controllers;

import model.Product;

import static play.data.Form.form;

import play.data.Form;
import play.db.jpa.Transactional;
import play.mvc.Controller;
import play.mvc.Result;
import services.ProductServices;

import java.util.HashMap;
import java.util.Map;

public class ProductController extends Controller {

    @Transactional
    public Result index() {
        return ok(views.html.products.index.render(ProductServices.getAll()));
    }

    public Result create() {
        Form<Product> productForm = form(Product.class);
        return ok(views.html.products.create.render(productForm));
    }

    @Transactional
    public Result store() {
        Form<Product> filledForm = form(Product.class).bindFromRequest();
        if (filledForm.hasErrors())
            return badRequest(views.html.products.create.render(filledForm));
        ProductServices.insert(filledForm.get());
        return index();
    }
}
