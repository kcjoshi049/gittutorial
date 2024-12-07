import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/loginform")
public class Login extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        String name = request.getParameter("username");
        String pass = request.getParameter("password");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Userdb","root","kamal@144049");
            PreparedStatement ps = conn.prepareStatement("select username,password from user_details where password=?");
            ps.setString(1,pass);
            ResultSet rs = ps.executeQuery();
            String new_name = "",new_pass = "";
            while(rs.next()) {
                 new_name = rs.getString("username");
                 new_pass = rs.getString("password");
            };
            if(name.equalsIgnoreCase(new_name) && (pass.equalsIgnoreCase(new_pass))){
                response.getWriter().println("Welcome "+new_name+"you have successfully login.");
            }
            else{
                response.getWriter().println("Login failed.");
            }
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
}
