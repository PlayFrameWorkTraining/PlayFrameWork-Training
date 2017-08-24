package services;

import java.util.List;

public interface IServices {
    List getAll();

    List searchByName(String input);
}
