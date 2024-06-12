/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CustomerDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Customer;

/**
 *
 * @author catlinh
 */
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fname_raw = (request.getParameter("firstname") == null || request.getParameter("firstname").isEmpty()) ? null : request.getParameter("firstname");
                String lname_raw = (request.getParameter("lastname") == null || request.getParameter("lastname").isEmpty()) ? null : request.getParameter("lastname");
                String uname_raw = (request.getParameter("username") == null || request.getParameter("username").isEmpty()) ? null : request.getParameter("username");
                String phone_raw = (request.getParameter("phone") == null || request.getParameter("phone").isEmpty()) ? null : request.getParameter("phone");
                String mail_raw = (request.getParameter("mail") == null || request.getParameter("mail").isEmpty()) ? null : request.getParameter("mail");
                String pwd_raw = (request.getParameter("password") == null || request.getParameter("password").isEmpty()) ? null : request.getParameter("password");

                Customer customer = new Customer(fname_raw, lname_raw, mail_raw,
                        uname_raw, pwd_raw, phone_raw);
                CustomerDao cd = null;
                    cd = new CustomerDao(getServletContext());
                
                int rs = cd.add(customer);
                if (rs > 0) {
                    response.sendRedirect("home");
                } else {
                    request.setAttribute("ms", "Account has not been created");
                    request.getRequestDispatcher("authentication").forward(request, response);
                }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
