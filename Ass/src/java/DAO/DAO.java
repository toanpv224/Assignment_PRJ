/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tretr
 */
public class DAO extends Context.BaseDAO {

    PreparedStatement ps = null;
    ResultSet rs = null;
    
    
    
    @Override
    public ArrayList getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    public List<Product> getAllProduct(){
        List<Product> list =new ArrayList<>();
        String sql = "SELECT  * FROM Product";
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {                
                list.add(new Product(rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getDouble(4), 
                        rs.getString(5), 
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public static void main(String[] args) {
        DAO dao=new DAO();
        List<Product> list = dao.getAllProduct();
        for (Product product : list) {
            System.out.println(product);
        }
    }
}
