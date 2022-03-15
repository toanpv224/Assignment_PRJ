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
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tretr
 */
public class ShowCartControll extends HttpServlet {

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
        Cookie arr[] = request.getCookies();
        PrintWriter out = response.getWriter();
        List<Product> p = new ArrayList<>();
        DAO dao = new DAO();

        for (Cookie o : arr) {
            if (o.getName().equals("id")) {
                String txt[] = o.getValue().split(",");
                for (String s : txt) {
                    p.add(dao.getProduct(s));
                }
            }
        }

        for (int i = 0; i < p.size(); i++) {
            int count = 1;
            for (int j = i + 1; j < p.size(); j++) {
                if (p.get(i).getId() == p.get(j).getId()) {
                    count++;
                    p.remove(j);
                    j--;
                    p.get(i).setAmount(count);
                }
            }
        }

        double vat = 0;
        double sum = 0;
        double total = 0;

        for (Product o : p) {
            total = total + o.getAmount() * o.getPrice();
        }

        vat = 0.1 * total;
        sum = total + vat;
        String t = String.format(Locale.GERMAN, "%,.1f", total);
        String v = String.format(Locale.GERMAN, "%,.1f", vat);
        String s = String.format(Locale.GERMAN, "%,.1f", sum);
        //so trang va so san pham trong 1 trang
        int page, numperpage = 5;
        // so san pham muoon phan trang
        int size = p.size();
        // so trang cua maf nguoi dung ddang chon
        int num = (size % 5 == 0 ? (size / 5) : ((size / 5)) + 1);
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
        request.setAttribute("list", list);
        request.setAttribute("num", num);
        request.setAttribute("total", t);
        request.setAttribute("vat", v);
        request.setAttribute("sum", s);
        request.getRequestDispatcher("Cart.jsp").forward(request, response);
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
