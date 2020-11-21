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
public class Branch_officeDAO {
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

    public static int save(Branch_officeBean u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("insert into branch_office(name,address,city,contact) values(?,?,?,?)");
            ps.setString(1, u.getName());
            ps.setString(2, u.getAddress());
            ps.setString(3, u.getCity());
            ps.setString(4, u.getContact());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(Branch_officeBean u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("update branch_office set name=?,address=?,city=?,contact=? where id=?");
            ps.setString(1, u.getName());
            ps.setString(2, u.getAddress());
            ps.setString(3, u.getCity());
            ps.setString(4, u.getContact());
            ps.setInt(5, u.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(Branch_officeBean u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("delete from branch_office where id=?");
            ps.setInt(1, u.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static List<Branch_officeBean> getAllRecords() {
        List<Branch_officeBean> list = new ArrayList<Branch_officeBean>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from branch_office");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Branch_officeBean u = new Branch_officeBean();
                u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setAddress(rs.getString("address"));
                u.setCity(rs.getString("city"));
                u.setContact(rs.getString("contact"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static Branch_officeBean getRecordById(int id) {
        Branch_officeBean u = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from branch_office where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new Branch_officeBean();
                u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setAddress(rs.getString("address"));
                u.setCity(rs.getString("city"));
                u.setContact(rs.getString("contact"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }

    public static List<Branch_officeBean> getRecords(int start, int total) {
        List<Branch_officeBean> list = new ArrayList<Branch_officeBean>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "select * from branch_office limit " + (start - 1) + "," + total);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Branch_officeBean e = new Branch_officeBean();
                e.setId(rs.getInt(1));
                e.setName(rs.getString(2));
                e.setContact(rs.getString(10));
                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
}
