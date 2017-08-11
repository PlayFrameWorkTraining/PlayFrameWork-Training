package services;

import model.Product;
import play.db.jpa.JPA;
import play.db.jpa.Transactional;

import java.util.List;

public class ProductServices {

    @Transactional
    public static List getAll() {
        return JPA.em().createQuery("SELECT p FROM Product p").getResultList();
    }

    @Transactional
    public static void insert(Product product) {
        JPA.em().persist(product);
    }
}
