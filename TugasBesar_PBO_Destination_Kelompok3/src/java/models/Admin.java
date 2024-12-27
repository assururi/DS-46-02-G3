/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;
import config.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
/**
 *
 * @author naufa
 */
public class Admin extends Pengguna {
    private String adminLevel;
    private final String role;
    
    public Admin(String username, String email, String password) {
        super(username, email, password);
        this.role = "ADMIN";
    }
    
    public boolean createTempatWisata(TempatWisata tempat) {
        try {
            Connection conn = DatabaseConnection.getConnection();
            String query = "INSERT INTO tempat_wisata (nama, deskripsi, harga) VALUES (?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, tempat.getNamaDestinasi());
            stmt.setString(2, tempat.getDeskripsiDestinasi());
            stmt.setDouble(3, tempat.getHarga());
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean manageUser(String username, boolean isActive) {
        try {
            Connection conn = DatabaseConnection.getConnection();
            String query = "UPDATE users SET is_active = ? WHERE username = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setBoolean(1, isActive);
            stmt.setString(2, username);
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void logout() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}

