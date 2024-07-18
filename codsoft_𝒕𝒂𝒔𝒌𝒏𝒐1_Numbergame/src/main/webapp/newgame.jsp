<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	session.setAttribute("msg", null);
	session.setAttribute("attempts", 0);
	session.setAttribute("randomnum", 0);
	response.sendRedirect("index.jsp");
	%>
</body>
</html>