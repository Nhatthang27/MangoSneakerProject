/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;

/**
 *
 * @author Nhatthang
 */
public class ProductDao implements GenericDao<Product> {

    Connection connection = null;

    public ProductDao() {
        try {
            connection = DBContext.getConnection();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public int add(Product obj) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int update(Product obj) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int delete(Product obj) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Product> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public List<Product> getProductsByCid(int cid) {
        List<Product> proList = null;
        String sql = "SELECT [ID]\n"
                + "      ,[CategoryID]\n"
                + "      ,[ProductName]\n"
                + "      ,[Price]\n"
                + "      ,[Image]\n"
                + "      ,[Discount]\n"
                + "  FROM [dbo].[Product]"
                + (cid == 0 ? "" : "WHERE CategoryID = " + cid);
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("ID"), rs.getInt("CategoryID"), rs.getString("ProductName"),
                        rs.getDouble("Price"), rs.getString("Image"), rs.getDouble("Discount"));
                if (proList == null) {
                    proList = new ArrayList<>();
                }
                proList.add(p);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return proList;
    }

    public static void main(String[] args) {
        ProductDao proDao = new ProductDao();
        List<Product> proList = proDao.getProductsByCid(1);
        for (Product p : proList) {
            System.out.println(p);
        }
    }
}
