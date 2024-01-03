/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Address;
import model.Person;

/**
 *
 * @author My pc
 */
public class AddressDAO extends DBContext{
     public ArrayList<Address> getAll() {
        try {
            String sql = "select* from address ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            ArrayList<Address> list = new ArrayList<>();
            while (rs.next()) {
               Address address=new Address(rs.getInt("id"), rs.getString("address"));
            
                list.add(address);
            }

            return list;
        } catch (SQLException ex) {
            Logger.getLogger(PersonDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
