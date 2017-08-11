package model;

import play.data.validation.Constraints;

public class Product {
    @Constraints.Required(message = "ID is required")
    private int id;

    @Constraints.Required(message = "Name is required")
    @Constraints.Pattern(value = "[a-zA-Z0-9 ]+", message = "Name must not contain special characters! (e.g: !, @, #, $, %,...)")
    private String name;

    @Constraints.Required(message = "Price is required")
    private double price;

    public Product() {
    }

    public Product(int id, String name, double price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public boolean equals(Object obj) {
        return obj instanceof Product && ((Product) obj).id == this.id;
    }

    @Override
    public int hashCode() {
        return this.id;
    }
}
