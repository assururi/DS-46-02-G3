/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;
import config.DatabaseConnection;
import interfaces.PaymentGateway;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author naufa
 */
public abstract class Turis extends Pengguna implements PaymentGateway {
    private String noTelpTuris;
    private List<Tiket> tiketList;
    private final String role;
    
    public Turis(String username, String email, String password, String noTelp) {
        super(username, email, password);
        this.noTelpTuris = noTelp;
        this.role = "TURIS";
        this.tiketList = new ArrayList<>();
    }
    
    public boolean signup() {
        try {
            Connection conn = DatabaseConnection.getConnection();
            String query = "INSERT INTO users (username, email, password, role, no_telp) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, super.usernamePengguna);
            stmt.setString(2, super.emailPengguna);
            stmt.setString(3, super.passwordPengguna);
            stmt.setString(4, super.role);
            stmt.setString(5, this.noTelpTuris);
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    @Override
    public boolean processPayment(double amount, String method) {
        // Implement payment processing logic
        return true;
    }
    
    @Override
    public String getPaymentStatus() {
        return "SUCCESS"; // Implement actual status checking
    }
    
    @Override
    public void generateReceipt() {
        // Implement receipt generation logic
    }
}
