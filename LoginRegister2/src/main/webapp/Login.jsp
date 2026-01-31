<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
<link rel="stylesheet" href="login.css">
</head>
<body>

<div class="card">
    <h2>Login</h2>

    <!-- ✅ SUCCESS MESSAGE -->
    <%
        String success = (String) request.getAttribute("success");
        if (success != null) {
    %>
        <p style="color:green; background:#e6ffe6; padding:10px; border-radius:8px;">
            ✅ <%= success %>
        </p>
    <%
        }
    %>

    <!-- ❌ ERROR MESSAGE -->
    <%
        String error = (String) request.getAttribute("error");
        if (error != null) {
    %>
        <p style="color:red; background:#ffe6e6; padding:10px; border-radius:8px;">
            ❌ <%= error %>
        </p>
    <%
        }
    %>

    <form action="LoginServlet" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Login</button>
    </form>

    <div class="link">
        New user? <a href="register.jsp">Register here</a><br>
        Back to Home <a href="index.html">Home</a>
    </div>
</div>

</body>
</html>
