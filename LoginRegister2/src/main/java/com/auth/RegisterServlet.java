package com.auth;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;


/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = request.getParameter("username");
        String pass = request.getParameter("password");
		String email = request.getParameter("email");
		
		 try {
	            Connection con = DBConnection.getConnection();
	            if (con == null) {
	                response.getWriter().println("Database Connection Failed");
	                return;
	            }
	            PreparedStatement ps = con.prepareStatement("INSERT into users values(?,?,?)");
	            ps.setString(1, user);
	            ps.setString(2, pass);
	            ps.setString(3, email);

	            ps.executeUpdate();

	            request.setAttribute("success", "Registration successful! Please login.");
	            request.getRequestDispatcher("Login.jsp").forward(request, response);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	}

}
