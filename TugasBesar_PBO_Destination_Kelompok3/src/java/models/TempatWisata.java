/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;
import config.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author naufa
 */
public class TempatWisata {
    private String idDestinasi;
    private String namaDestinasi;
    private String deskripsiDestinasi;
    private double harga;
    private int kapasitas;
    private List<Review> reviews;
    
    public TempatWisata() {
        this.reviews = new ArrayList<>();
    }
    
    public static List<TempatWisata> getAllDestinations() {
        List<TempatWisata> destinations = new ArrayList<>();
        try {
            Connection conn = DatabaseConnection.getConnection();
            String query = "SELECT * FROM tempat_wisata WHERE is_active = true";
            PreparedStatement stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                TempatWisata tempat = new TempatWisata();
                tempat.setIdDestinasi(rs.getString("id_destinasi"));
                tempat.setNamaDestinasi(rs.getString("nama_destinasi"));
                tempat.setDeskripsiDestinasi(rs.getString("deskripsi"));
                tempat.setHarga(rs.getDouble("harga"));
                tempat.setKapasitas(rs.getInt("kapasitas"));
                destinations.add(tempat);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return destinations;
    }
    
    // Getters and setters
    public String getIdDestinasi() { 
        return idDestinasi; 
    }
    public void setIdDestinasi(String id) { this.idDestinasi = id; }
    public String getNamaDestinasi() { return namaDestinasi; }
    public void setNamaDestinasi(String nama) { this.namaDestinasi = nama; }
    public String getDeskripsiDestinasi() { return deskripsiDestinasi; }
    public void setDeskripsiDestinasi(String deskripsi) { this.deskripsiDestinasi = deskripsi; }
    public double getHarga() { return harga; }
    public void setHarga(double harga) { this.harga = harga; }
    public int getKapasitas() { return kapasitas; }
    public void setKapasitas(int kapasitas) { this.kapasitas = kapasitas; }

}
