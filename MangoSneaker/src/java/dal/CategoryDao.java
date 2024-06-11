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
import model.Category;
import model.Product;

/**
 *
 * @author Nhatthang
 */
public class CategoryDao implements GenericDao<Category> {
    Connection connection = null;

    public CategoryDao() {
        try {
            connection = DBContext.getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    @Override
    public int add(Category obj) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int update(Category obj) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int delete(Category obj) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Category> getAll() {
        List<Category> cateList = null;
        String sql = "SELECT [ID]\n"
                + "      ,[CategoryName]\n"
                + "  FROM [dbo].[Category]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()) {
                Category cate = new Category(rs.getInt("ID"), rs.getString("CategoryName"));
                if (cateList == null) { 
                    cateList = new ArrayList<>();
                }
                cateList.add(cate);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cateList;
    }
    
    public static void main(String[] args) {
        CategoryDao cateDao = new CategoryDao();
        List<Category> cateList = cateDao.getAll();
        for(Category p : cateList) {
            System.out.println(p);
        }
    }
}
