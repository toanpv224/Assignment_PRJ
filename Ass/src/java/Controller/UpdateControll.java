/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tretr
 */
public class UpdateControll extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        String tag = request.getParameter("tag");
        DAO dao = new DAO();
        switch (tag) {
            case "0":
                String pid = request.getParameter("id");
                String pname = request.getParameter("name");
                String pimage = request.getParameter("image");
                String pprice = request.getParameter("price");
                String ptitle = request.getParameter("title");
                String pdescription = request.getParameter("description");
                String pcategory = request.getParameter("category");
                dao.editProduct(pname, pimage, pprice, ptitle, pdescription, pcategory, pid);
                response.sendRedirect("manager");
                break;
            case "1":
                String aid = request.getParameter("id");
                String user = request.getParameter("user");
                String pass = request.getParameter("pass");
                String roll = request.getParameter("roll");
                switch (roll) {
                    case "0":
                        dao.editAccount(user, pass, 0, 0, aid);
                        response.sendRedirect("manageraccount");
                        break;
                    case "1":
                        dao.editAccount(user, pass, 1, 0, aid);
                        response.sendRedirect("manageraccount");
                        break;
                    case "2":
                        dao.editAccount(user, pass, 0, 1, aid);
                        response.sendRedirect("manageraccount");
                        break;
                }
                break;
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
