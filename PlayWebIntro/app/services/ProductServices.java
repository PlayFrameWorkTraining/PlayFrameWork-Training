package services;

import model.Product;
import play.db.jpa.JPA;
import play.db.jpa.Transactional;

import javax.persistence.EntityTransaction;
import java.util.List;

public class ProductServices {

    @Transactional
    public static List getAll() {
        return JPA.em().createQuery("SELECT p FROM Product p").getResultList();
    }

    @Transactional
    public static Product findById(int id) {
        return JPA.em().find(Product.class, id);
    }

    @Transactional
    public static void insert(Product product) {
        JPA.em().persist(product);
    }

    @Transactional
    public static void update(int id, String name, double price) {
        Product product = findById(id);
        product.setName(name);
        product.setPrice(price);
    }

    @Transactional
    public static void delete(int id) {
        Product product = findById(id);
        JPA.em().remove(product);
    }
}