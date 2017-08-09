package controllers;

import models.Product;
import play.mvc.Controller;
import play.mvc.Result;

import java.util.ArrayList;
import java.util.List;

public class ProductController extends Controller {
    public Result productOfTheDay() {
        return ok(views.html.productoftheday.render(new Product(1, "MacBook Pro 2016", 60000000)));
    }

    public Result show() {
        List<Product> products = new ArrayList<>();
        products.add(new Product(1, "MacBook Pro 2016", 60000000));
        products.add(new Product(2, "Dell Precision", 40000000));
        products.add(new Product(3, "Lamborghini", 9100000000.0));
        products.add(new Product(4, "iPhone 8", 24000000));
        products.add(new Product(5, "Luxury Penthouse", 8000000000.0));
        return ok(views.html.products.render(products));
    }
}
