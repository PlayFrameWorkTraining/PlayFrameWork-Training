package services;

import play.db.jpa.JPA;

import java.util.List;

public class MajorServices implements IServices {
    @Override
    public List getAll() {
        return JPA.em().createQuery("FROM Major ORDER BY id").getResultList();
    }

    @Override
    public List searchByName(String input) {
        return JPA.em().createQuery("FROM Major WHERE name LIKE '" + input + "' ORDER BY id").getResultList();
    }
}
