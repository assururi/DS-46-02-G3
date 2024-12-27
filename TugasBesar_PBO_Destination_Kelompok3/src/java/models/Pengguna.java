/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;
import interfaces.Authenticator;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import config.DatabaseConnection;
/**
 *
 * @author naufa
 */
public abstract class Pengguna implements Authenticator {
    protected String usernamePengguna;
    protected String emailPengguna;
    protected String passwordPengguna;
    protected String role;
    protected boolean isActive;
    
    public Pengguna(String username, String email, String password) {
        this.usernamePengguna = username;
        this.emailPengguna = email;
        this.passwordPengguna = password;
        this.isActive = true;
    }
    
    @Override
    public boolean login(String username, String password) {
        try {
            Connection conn = DatabaseConnection.getConnection();
            String query = "SELECT * FROM users WHERE username = ? AND password = ? AND is_active = true";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, username);
            stmt.setString(2, password); // In real application, use password hashing
            ResultSet rs = stmt.executeQuery();
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    @Override
    public boolean resetPassword(String email) {
        // Implementation for password reset functionality
        return false;
    }
}
