/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;
import config.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author naufa
 */
public class Review {
    private String idReview;
    private String idTempatWisata;
    private String username;
    private String text;
    private int rating;
    private LocalDateTime createdAt;
    
    public boolean save() {
        try {
            Connection conn = DatabaseConnection.getConnection();
            String query = "INSERT INTO reviews (id_tempat_wisata, username, text, rating, created_at) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, this.idTempatWisata);
            stmt.setString(2, this.username);
            stmt.setString(3, this.text);
            stmt.setInt(4, this.rating);
            stmt.setObject(5, LocalDateTime.now());
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public static List<Review> getReviewsByDestination(String idTempatWisata) {
        List<Review> reviews = new ArrayList<>();
        try {
            Connection conn = DatabaseConnection.getConnection();
            String query = "SELECT * FROM reviews WHERE id_tempat_wisata = ? ORDER BY created_at DESC";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, idTempatWisata);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                Review review = new Review();
                review.setIdReview(rs.getString("id_review"));
                review.setUsername(rs.getString("username"));
                review.setText(rs.getString("text"));
                review.setRating(rs.getInt("rating"));
                review.setCreatedAt(rs.getObject("created_at", LocalDateTime.class));
                reviews.add(review);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return reviews;
    }
    
    // Getters and setters
    public void setIdReview(String id) { this.idReview = id; }
    public void setUsername(String username) { this.username = username; }
    public void setText(String text) { this.text = text; }
    public void setRating(int rating) { this.rating = rating; }
    public void setCreatedAt(LocalDateTime createdAt) { this.createdAt = createdAt; }
}