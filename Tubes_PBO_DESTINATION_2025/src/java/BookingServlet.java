/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String destinationId = request.getParameter("destinationId");
        String bookingDate = request.getParameter("bookingDate");
        
        JDBC jdbc = new JDBC();
        
        try {
            String query = "INSERT INTO booking (userId, destinationId, bookingDate) VALUES (1, ?, ?)";
            Connection conn = jdbc.con;
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, destinationId);
            pstmt.setString(2, bookingDate);
            
            int rows = pstmt.executeUpdate();
            System.out.println(rows + " row(s) inserted");
            
            pstmt.close();
            jdbc.disconnect();
            response.sendRedirect("InfoPesanan.jsp");
            
        } catch (Exception e) {
            e.printStackTrace();
            jdbc.disconnect();
            response.sendRedirect("booking.jsp?error=" + e.getMessage());
        }
    }
}