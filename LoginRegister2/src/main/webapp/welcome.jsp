<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<link rel="stylesheet" href="welcome.css">
</head>
<body>
<div class="navbar">
    <h2>Auth Dashboard</h2>
    <%
    HttpSession session1=request.getSession(false);
    if (session1 != null && session1.getAttribute("user")!=null) {
    	String user = (String) session1.getAttribute("user");
	%>
    <a href="logout.jsp">Logout</a>
</div>
<div class="container">
    <h1>Welcome, <%= user %> 🎉</h1>
    <p>You have successfully logged in!</p>

    <div class="card-box">
        <div class="card">
            <h3>🔐 Secure Login</h3>
            <p>Session-based authentication ensures secure access.</p>
        </div>
    </div>
    <% }else{
    	response.sendRedirect("Login.jsp");
    }
    %>
</div>

<footer>
    © 2025 | Login Authentication System
</footer>
</body>
</html>