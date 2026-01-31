<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		HttpSession current=request.getSession(false);
		if(current!=null){
			current.invalidate();
		}
		response.sendRedirect("index.html"); 
	%>

</body>
</html>