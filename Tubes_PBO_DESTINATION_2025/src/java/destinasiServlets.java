import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DestinationServlet")
public class destinasiServlets extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            // Koneksi database menggunakan JDBC
            JDBC jdbc = new JDBC();
            if (jdbc.isConnected) {
                String query = "SELECT destinationId, name FROM destination";
                ResultSet rs = jdbc.getData(query);

                // Tampilkan hasil sebagai opsi dropdown
                while (rs.next()) {
                    int id = rs.getInt("destinationId");
                    String name = rs.getString("name");
                    out.println("<option value='" + id + "'>" + name + "</option>");
                }

                jdbc.disconnect();
            } else {
                out.println("<option>Error: " + jdbc.message + "</option>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
