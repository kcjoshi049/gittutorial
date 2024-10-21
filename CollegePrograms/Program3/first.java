package in_sp_backend;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

@WebServlet("/regform")
public class First extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        String myfname = req.getParameter("userfname");
        String mylname = req.getParameter("userlname");
        String mydob = req.getParameter("DOB");
        String myage = req.getParameter("age");
        String mygender = req.getParameter("gender");
        String mymail = req.getParameter("Mail");
        String lddate = req.getParameter("ldate");
        String mybloodgroup = req.getParameter("bloodgroup");
        String myphonenumber = req.getParameter("no");
        String myaddress = req.getParameter("add");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/User", "root", "kamal@144049");
            PreparedStatement ps = conn.prepareStatement(
                    "INSERT INTO donor_registration (first_name, last_name, dob, age, gender, email, last_donation_date, blood_group, phone_no, address) VALUES (?,?,?,?,?,?,?,?,?,?)");

            ps.setString(1, myfname);
            ps.setString(2, mylname);
            ps.setString(3, mydob);
            ps.setString(4, myage);
            ps.setString(5, mygender);
            ps.setString(6, mymail);
            ps.setString(7, lddate);
            ps.setString(8, mybloodgroup);
            ps.setString(9, myphonenumber);
            ps.setString(10, myaddress);

            int count = ps.executeUpdate();
            if (count > 0) {
                resp.setContentType("text/html");
                out.println("<h3 style='color:green'>user registered successfully.</h3>");

                RequestDispatcher rd = req.getRequestDispatcher("/first.jsp");
                rd.include(req, resp);
            } else {
                resp.setContentType("text/html");
                out.println("<h3 style='color:red'>user registered faild.</h3>");

                RequestDispatcher rd = req.getRequestDispatcher("/first.jsp");
                rd.include(req, resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.setContentType("text/html");
            out.println("<h3 style='color:blue'>Exception occured :- " + e.getMessage() + "</h3>");

            RequestDispatcher rd = req.getRequestDispatcher("/first.jsp");
            rd.include(req, resp);
        }
    }
}
