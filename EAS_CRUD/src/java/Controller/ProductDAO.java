/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author marsellaeve
 */
public class ProductDAO {
    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/empmanagement", "root", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static int save(ProductBean u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("insert into products(name,price,description,merk) values(?,?,?,?)");
            ps.setString(1, u.getName());
            ps.setInt(2, u.getPrice());
            ps.setString(3, u.getDescription());
            ps.setString(4, u.getMerk());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(ProductBean u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("update products set name=?,price=?,description=?,merk=? where id=?");
            ps.setString(1, u.getName());
            ps.setInt(2, u.getPrice());
            ps.setString(3, u.getDescription());
            ps.setString(4, u.getMerk());
            ps.setInt(5, u.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(ProductBean u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("delete from products where id=?");
            ps.setInt(1, u.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static List<ProductBean> getAllRecords() {
        List<ProductBean> list = new ArrayList<ProductBean>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from products");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProductBean u = new ProductBean();
                u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setPrice(rs.getInt("price"));
                u.setDescription(rs.getString("description"));
                u.setMerk(rs.getString("merk"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static ProductBean getRecordById(int id) {
        ProductBean u = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from products where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new ProductBean();
                u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setPrice(rs.getInt("price"));
                u.setDescription(rs.getString("description"));
                u.setMerk(rs.getString("merk"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }

    public static List<ProductBean> getRecords(int start, int total) {
        List<ProductBean> list = new ArrayList<ProductBean>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "select * from products limit " + (start - 1) + "," + total);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProductBean e = new ProductBean();
                e.setId(rs.getInt(1));
                e.setName(rs.getString(2));
                e.setPrice(rs.getInt(7));
                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
}
