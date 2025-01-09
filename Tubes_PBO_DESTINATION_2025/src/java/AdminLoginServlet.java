/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
// AdminLoginServlet.java
import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        JDBC jdbc = new JDBC();
        
        if (jdbc.isConnected) {
            try {
                String query = "SELECT * FROM admin WHERE email='" + email + 
                             "' AND password='" + password + "'";
                ResultSet rs = jdbc.getData(query);
                
                if (rs.next()) {
                    // Login berhasil
                    HttpSession session = request.getSession();
                    session.setAttribute("adminId", rs.getInt("adminId"));
                    session.setAttribute("adminName", rs.getString("name"));
                    session.setAttribute("adminEmail", rs.getString("email"));
                    
                    jdbc.disconnect();
                    response.sendRedirect("AdminView.jsp");
                } else {
                    // Login gagal
                    request.setAttribute("error", "Email atau password salah");
                    jdbc.disconnect();
                    request.getRequestDispatcher("loginAdmin.jsp").forward(request, response);
                }
                
            } catch (Exception e) {
                request.setAttribute("error", "Error: " + e.getMessage());
                jdbc.disconnect();
                request.getRequestDispatcher("loginAdmin.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("error", "Koneksi database gagal: " + jdbc.message);
            request.getRequestDispatcher("loginAdmin.jsp").forward(request, response);
        }
    }
}