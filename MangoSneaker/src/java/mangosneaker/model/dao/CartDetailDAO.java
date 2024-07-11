/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mangosneaker.model.dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletContext;
import mangosneaker.model.dto.ProductDTO;
import mangosneaker.model.dto.ProductInCartDTO;
import mangosneaker.utils.DBContext;

/**
 *
 * @author Nhatthang
 */
public class CartDetailDAO implements Serializable {

    private ServletContext sc = null;

    public CartDetailDAO(ServletContext sc) {
        this.sc = sc;
    }

    public void addToCart(int customerID, int productId, int size, int quantity) throws ClassNotFoundException, SQLException {
        String sql = "INSERT INTO [dbo].[CartDetail]\n"
                + "           ([CustomerID]\n"
                + "           ,[ProductID]\n"
                + "           ,[SizeNumber]\n"
                + "           ,[Quantity])\n"
                + "     VALUES\n"
                + "           (?, ?, ?, ?)";

        try ( Connection con = new DBContext(sc).getConnection();  PreparedStatement st = con.prepareStatement(sql);) {
            st.setInt(1, customerID);
            st.setInt(2, productId);
            st.setInt(3, size);
            st.setInt(4, quantity);
            System.out.println("customerID: " + customerID);
            System.out.println("productId: " + productId);
            System.out.println("size: " + size);
            System.out.println("quantity: " + quantity);
            st.executeUpdate();

        }
    }

    public List<ProductInCartDTO> getAllProductInCart(int customerID) throws ClassNotFoundException, SQLException {
        List<ProductInCartDTO> cart = null;
        String sql = "SELECT [CustomerID]\n"
                + "      ,[ProductID]\n"
                + "      ,[SizeNumber]\n"
                + "      ,[Quantity]\n"
                + "  FROM [dbo].[CartDetail]\n"
                + "  WHERE CustomerID = ?";
        try ( Connection con = new DBContext(sc).getConnection();  PreparedStatement st = con.prepareStatement(sql);) {
            st.setInt(1, customerID);
            System.out.println("customerID: " + customerID);

            try ( ResultSet rs = st.executeQuery()) {
                ProductDAO proDao = new ProductDAO(sc);
                while (rs.next()) {
                    ProductInCartDTO pro = new ProductInCartDTO(proDao.getProductById(rs.getInt("ProductID")), rs.getInt("SizeNumber"), rs.getInt("Quantity"));
                    if (cart == null) {
                        cart = new ArrayList<>();
                    }
                    cart.add(pro);
                }
            }
            System.out.println("cart in DAO" + cart);
        }
        return cart;
    }

    public int deleteProductInCart(int customerID, int productID, int size) throws ClassNotFoundException, SQLException {
        int res;
        String sql = "DELETE FROM [dbo].[CartDetail]\n"
                + "      WHERE CustomerID = ? \n"
                + "        AND ProductID = ?\n"
                + "        AND SizeNumber = ?";
        try ( Connection con = new DBContext(sc).getConnection();  PreparedStatement st = con.prepareStatement(sql);) {
            st.setInt(1, customerID);
            st.setInt(2, productID);
            st.setInt(3, size);

            res = st.executeUpdate();
        }
        return res;
    }

}
