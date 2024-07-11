/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mangosneaker.model.dto;

import java.io.Serializable;

/**
 *
 * @author Nhatthang
 */
public class ProductInCartDTO implements Serializable{
    private ProductDTO product = null;
    private int size;
    private int quantity;

    public ProductInCartDTO() {
    }

    public ProductInCartDTO(ProductDTO product, int size, int quantity) {
        this.product = product;
        this.size = size;
        this.quantity = quantity;
    }

    public ProductDTO getProduct() {
        return product;
    }

    public void setProduct(ProductDTO product) {
        this.product = product;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "ProductInCartDTO{" + "product=" + product + ", size=" + size + ", quantity=" + quantity + '}';
    }
    
    
}
