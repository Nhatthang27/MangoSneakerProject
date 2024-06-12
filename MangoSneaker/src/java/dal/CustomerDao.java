/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import model.Customer;

/**
 *
 * @author catlinh
 */
public class CustomerDao implements GenericDao<Customer> {

    ServletContext sc = null;

    public CustomerDao(ServletContext sc) {
        this.sc = sc;
    }

    public Customer getAccount(String username, String pwd) throws ClassNotFoundException {
        String sql = "SELECT [ID]\n"
                + "      ,[FirstName]\n"
                + "      ,[LastName]\n"
                + "      ,[Mail]\n"
                + "      ,[Username]\n"
                + "      ,[Phone]\n"
                + "  FROM [dbo].[Customer]\n"
                + "  WHERE [Username] = ? AND [Password] = ?;";

        try (Connection connection = new DBContext(sc).getConnection(); PreparedStatement st = connection.prepareStatement(sql);) {
            st.setString(1, username);
            st.setString(2, pwd);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Customer u = new Customer(rs.getInt("ID"), rs.getString("FirstName"),
                        rs.getString("LastName"), rs.getString("Mail"),
                        rs.getString("Username"), rs.getString("Phone"));
                return u;
            }
        } catch (SQLException ex) {
            System.out.println(ex);;
        }
        return null;
    }

    @Override
    public int add(Customer customer) {
        String sql = "INSERT INTO [dbo].[Customer]\n"
                + "           ([FirstName]\n"
                + "           ,[LastName]\n"
                + "           ,[Mail]\n"
                + "           ,[Username]\n"
                + "           ,[Password]\n"
                + "           ,[Phone])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?)";
        int rs = 0;
        try (Connection connection = new DBContext(sc).getConnection(); PreparedStatement st = connection.prepareStatement(sql);) {
            st.setString(1, customer.getFirstName());
            st.setString(2, customer.getLastName());
            st.setString(3, customer.getMail());
            st.setString(4, customer.getUserName());
            st.setString(5, customer.getPassword());
            st.setString(6, customer.getPhone());

            rs = st.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    @Override
    public int update(Customer obj) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Customer> getAll() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public int delete(Customer obj) {
        String sql = "DELETE FROM [dbo].[Customer]\n"
                + "      WHERE ID = ?";
        int rs = 0;
        try (Connection connection = new DBContext(sc).getConnection(); PreparedStatement st = connection.prepareStatement(sql);) {
            st.setInt(1, obj.getId());

            rs = st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
}
