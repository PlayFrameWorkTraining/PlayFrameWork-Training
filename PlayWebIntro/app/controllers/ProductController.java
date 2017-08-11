package controllers;

import model.Product;

import static play.data.Form.form;

import play.data.Form;
import play.mvc.Controller;
import play.mvc.Result;

import java.util.HashMap;
import java.util.Map;

public class ProductController extends Controller {
    public Result index() {
        Map<Integer, Product> products = new HashMap<>();
        products.put(1, new Product(1, "MacBook Pro 2016", 60000000));
        products.put(2, new Product(2, "Dell Precision", 40000000));
        products.put(3, new Product(3, "Lamborghini", 9100000000.0));
        products.put(4, new Product(4, "iPhone 8", 24000000));
        products.put(5, new Product(5, "Luxury Penthouse", 8000000000.0));
        return ok(views.html.products.index.render(products));
    }

    public Result create() {
        Form<Product> productForm = form(Product.class);
        return ok(views.html.products.create.render(productForm));
    }

    public Result store() {
        Form<Product> filledForm = form(Product.class).bindFromRequest();
        if (filledForm.hasErrors())
            return badRequest(views.html.products.create.render(filledForm));
        return ok("Received request for creating product " + filledForm.get());
    }
}
