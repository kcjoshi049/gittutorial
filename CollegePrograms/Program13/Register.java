import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/regform")
public class Register  extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("username");
        String pass = request.getParameter("password");
        String conpass = request.getParameter("conpassword");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Userdb","root","kamal@144049");
            if(pass.equalsIgnoreCase(conpass)) {
                PreparedStatement ps = conn.prepareStatement("insert into user_details(username,password) values(?,?)");
                ps.setString(1, name);
                ps.setString(2, pass);
                int x = ps.executeUpdate();
                if(x>0) {
                    response.getWriter().println("Registration Successful! You can now log in.");
                }
                else {
                    response.getWriter().println("Registration Failed. Try again.");
                }
            }
            else {
                response.getWriter().println("enter a valid password.");
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
    }
}
