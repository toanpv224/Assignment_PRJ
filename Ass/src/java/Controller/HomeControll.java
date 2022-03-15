/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.DAO;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tretr
 */
public class HomeControll extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HomeControll</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HomeControll at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //processRequest(request, response);
        DAO dao = new DAO();
        List<Product> p = dao.getAllProduct();
        
        
        //so trang va so san pham trong 1 trang
        int page, numperpage = 6;
        // so san pham muoon phan trang
        int size = p.size();
        // so trang cua maf nguoi dung ddang chon
        int num = (size % 6 == 0 ? (size / 6) : ((size / 6)) + 1);
        //lay so trang truyen vao
        String xpage = request.getParameter("page");
        //neu so trang truyen vao = null tra ve trang so 1
        if (xpage == null) {
            page = 1;
        //neu so trang truyen vao != null tra ve trang truyen vao
        } else {
            page = Integer.parseInt(xpage);
        }
        //lay vi tri the tu list san pham muon phan trang tu so san pham mong muon trong 1 trang
        int start, end;
        start = (page - 1) * numperpage;//index bat dau
        end = Math.min(page * numperpage, size);//index ket thuc
        //chia cac san pham muon phan trang tu vi tri -> tra ve 1 trang voi so san pham mong muon trong 1 trang
        List<Product> list = dao.getListProductByPage(p, start, end);
        
        //tra ve list da phan trang
        
        
        request.setAttribute("listP", list);
        request.setAttribute("num", num);
        request.getRequestDispatcher("Home.jsp").forward(request, response);
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
