/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.TempatWisata;
import models.Tiket;
import models.Turis;
/**
 *
 * @author naufa
 */
@WebServlet(name = "PesanTiketServlet", urlPatterns = {"/PesanTiketServlet"})
public class PesanTiketServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idDestinasi = request.getParameter("id");
        try {
            TempatWisata destinasi = TempatWisata.getById(idDestinasi);
            request.setAttribute("destinasi", destinasi);
            request.getRequestDispatcher("pesan-tiket.jsp").forward(request, response);
        } catch (Exception e) {
            response.sendRedirect("error.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Get form data
            String idDestinasi = request.getParameter("idDestinasi");
            String tanggalStr = request.getParameter("tanggalKunjungan");
            String metodePembayaran = request.getParameter("metodePembayaran");
            
            // Get logged in user
            Turis user = (Turis) request.getSession().getAttribute("user");
            if (user == null) {
                response.sendRedirect("login.jsp");
                return;
            }

            // Get destination
            TempatWisata destinasi = TempatWisata.getById(idDestinasi);
            
            // Parse date
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDateTime tanggalKunjungan = LocalDateTime.parse(tanggalStr, formatter);
            
            // Create ticket
            Tiket tiket = new Tiket(user.getUserId(), destinasi, tanggalKunjungan);
            
            // Process payment
            if (user.processPayment(destinasi.getHarga(), metodePembayaran)) {
                tiket.updateStatus("PAID");
                user.generateReceipt();
                response.sendRedirect("tiket.jsp?status=success");
            } else {
                tiket.updateStatus("FAILED");
                response.sendRedirect("pesan-tiket.jsp?error=payment");
            }
        } catch (Exception e) {
            response.sendRedirect("error.jsp");
        }
    }
    
}
