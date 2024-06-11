/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Nhatthang
 */
public class Product {
    
    private int id;
    private int categoryId;
    private String name;
    private double price;
    private String img;
    private double discount;

    public Product() {
    }

    public Product(int id, int categoryId, String name, double price, String img, double discount) {
        this.id = id;
        this.categoryId = categoryId;
        this.name = name;
        this.price = price;
        this.img = img;
        this.discount = discount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
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

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", categoryId=" + categoryId + ", name=" + name + ", price=" + price + ", img=" + img + ", discount=" + discount + '}';
    }

    
    
    
}
