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
    public static boolean insert(Product product) {
        if (findById(product.getId()) == null) {
            JPA.em().persist(product);
            return true;
        }
        return false;
    }

    @Transactional
    public static void update(int id, String name, double price) {
        Product product = findById(id);
        product.setName(name);
        product.setPrice(price);
    }
}