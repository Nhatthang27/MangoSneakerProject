/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Nhatthang
 */
public class DBContext {

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        String hostName = "localhost";
        String sqlInstanceName = "NHATTHANG";
        String port = "1433";
        String database = "MangoSneakerDB";
        String userName = "sa";
        String password = "sa123456";

        String url = String.format("jdbc:sqlserver://%s:%s;instanceName=%s;DatabaseName=%s;user=%s;password=%s;",
                hostName, port, sqlInstanceName, database, userName, password);
        return getConnection(url);
    }

    public static Connection getConnection(String url) throws ClassNotFoundException, SQLException {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection connect = DriverManager.getConnection(url);
        return connect;
    }
}
