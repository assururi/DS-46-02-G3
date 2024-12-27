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
import java.util.UUID;
/**
 *
 * @author naufa
 */
public class Tiket {
    private String idTiket;
    private String idTuris;
    private TempatWisata tempatWisata;
    private LocalDateTime tanggalKunjungan;
    private String statusPembayaran;
    private double harga;
    
    public Tiket(String idTuris, TempatWisata tempatWisata, LocalDateTime tanggalKunjungan) {
        this.idTiket = UUID.randomUUID().toString();
        this.idTuris = idTuris;
        this.tempatWisata = tempatWisata;
        this.tanggalKunjungan = tanggalKunjungan;
        this.statusPembayaran = "PENDING";
        this.harga = tempatWisata.getHarga();
    }
    
    public boolean save() {
        try {
            Connection conn = DatabaseConnection.getConnection();
            String query = "INSERT INTO tiket (id_tiket, id_turis, id_tempat_wisata, tanggal_kunjungan, status_pembayaran, harga) " +
                          "VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, this.idTiket);
            stmt.setString(2, this.idTuris);
            stmt.setString(3, this.tempatWisata.getIdDestinasi());
            stmt.setObject(4, this.tanggalKunjungan);
            stmt.setString(5, this.statusPembayaran);
            stmt.setDouble(6, this.harga);
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean updateStatus(String newStatus) {
        try {
            Connection conn = DatabaseConnection.getConnection();
            String query = "UPDATE tiket SET status_pembayaran = ? WHERE id_tiket = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, newStatus);
            stmt.setString(2, this.idTiket);
            boolean updated = stmt.executeUpdate() > 0;
            if (updated) {
                this.statusPembayaran = newStatus;
            }
            return updated;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
}
