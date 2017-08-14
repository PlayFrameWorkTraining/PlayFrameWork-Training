package controllers;

import model.Product;

import static play.data.Form.form;

import play.data.Form;
import play.db.jpa.Transactional;
import play.mvc.Controller;
import play.mvc.Result;
import services.ProductServices;

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
        ProductServices.insert(new Product(filledForm.get().getName(), filledForm.get().getPrice()));
        return index();
    }

    @Transactional
    public Result edit(int id) {
        Product product = ProductServices.findById(id);
        Form<Product> form = form(Product.class).fill(product);
        return ok(views.html.products.edit.render(form));
    }

    @Transactional
    public Result update() {
        Form<Product> filledForm = form(Product.class).bindFromRequest();
        if (filledForm.hasErrors())
            return badRequest(views.html.products.edit.render(filledForm));
        ProductServices.update(
                Integer.parseInt(filledForm.field("id").value()),
                filledForm.field("name").value(),
                Double.parseDouble(filledForm.field("price").value()));
        return index();
    }

    @Transactional
    public Result delete(int id) {
        ProductServices.delete(id);
        return index();
    }
}