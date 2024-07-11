/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package mangosneaker.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mangosneaker.model.dao.CartDetailDAO;
import mangosneaker.model.dto.CustomerDTO;
import mangosneaker.model.dto.ProductInCartDTO;

/**
 *
 * @author Nhatthang
 */
public class ShowCartController extends HttpServlet {

    private final String AUTHENTICATION_PAGE_ACTION = "AuthenticationPage";
    private final String CART_PAGE_ACTION = "CartPage";

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
        response.setContentType("text/html;charset=UTF-8");
        HttpSession sess = request.getSession();
        CustomerDTO customer = (CustomerDTO) sess.getAttribute("information");

        if (customer == null) {
            request.getRequestDispatcher("MainAuthenticationController?action=" + AUTHENTICATION_PAGE_ACTION).forward(request, response);
        } else {
            int customerID = customer.getId();
            CartDetailDAO cartDao = new CartDetailDAO(getServletContext());

            try {
                int numItem = 0;
                double totalPrice = 0;
                List<ProductInCartDTO> cart = cartDao.getAllProductInCart(customerID);
                if (cart != null) {
                    for (ProductInCartDTO c : cart) {
                        numItem += c.getQuantity();
                        totalPrice += c.getQuantity() * c.getProduct().getPrice();
                    }
                }
                request.setAttribute("totalPrice", totalPrice);
                request.setAttribute("numItem", numItem);
                request.setAttribute("cart", cart);
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(ShowCartController.class.getName()).log(Level.SEVERE, null, ex);
            }
            request.getRequestDispatcher("DispatcherProductController?action=" + CART_PAGE_ACTION).forward(request, response);
        }
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
        processRequest(request, response);
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
