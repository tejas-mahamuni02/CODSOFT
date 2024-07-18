<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!static int attempt = 0;
	static int randomnum = 0;%>
	<%
	int number = Integer.parseInt(request.getParameter("num"));
	Random rand = new Random();
	randomnum = rand.nextInt(100);
	int prev = (Integer) session.getAttribute("attempts");
	if (prev == 0) {
		attempt = 0;
	}

	
	if (number > randomnum) {
		session.setAttribute("msg", "Higher");
		attempt++;
		session.setAttribute("attempts", attempt);
		session.setAttribute("randomnum", randomnum);
		response.sendRedirect("index.jsp");
	}
	if (number < randomnum) {
		session.setAttribute("msg", "Lower");
		attempt++;
		session.setAttribute("attempts", attempt);
		session.setAttribute("randomnum", randomnum);
		response.sendRedirect("index.jsp");
	}
	if (number == randomnum) {
		session.setAttribute("msg", "correct");
		attempt++;
		session.setAttribute("attempts", attempt);
		session.setAttribute("randomnum", randomnum);
		response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>