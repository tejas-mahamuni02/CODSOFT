<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!static float total = 0;%>
	<%
	float physics = Float.parseFloat(request.getParameter("phy"));
	float chemistry = Float.parseFloat(request.getParameter("chem"));
	float maths = Float.parseFloat(request.getParameter("maths"));
	float biology = Float.parseFloat(request.getParameter("bio"));

	total = physics + chemistry + maths + biology;
	float percentage = total / 4;


	if (percentage < 100 && percentage > 90) {
		session.setAttribute("grade", "A+");
		session.setAttribute("total", total);
		session.setAttribute("percentage", percentage);
		response.sendRedirect("index.jsp");

	} else if (percentage <= 90 && percentage > 80) {
		session.setAttribute("grade", "A");
		session.setAttribute("total", total);
		session.setAttribute("percentage", percentage);
		response.sendRedirect("index.jsp");
	} else if (percentage <= 80 && percentage > 70) {
		session.setAttribute("grade", "B+");
		session.setAttribute("total", total);
		session.setAttribute("percentage", percentage);
		response.sendRedirect("index.jsp");
	} else if (percentage <= 70 && percentage > 60) {
		session.setAttribute("grade", "B");
		session.setAttribute("total", total);
		session.setAttribute("percentage", percentage);
		response.sendRedirect("index.jsp");
	} else if (percentage <= 60 && percentage > 50) {
		session.setAttribute("grade", "C+");
		session.setAttribute("total", total);
		session.setAttribute("percentage", percentage);
		response.sendRedirect("index.jsp");
	} else if (percentage <= 50 && percentage > 35) {
		session.setAttribute("grade", "C");
		session.setAttribute("total", total);
		session.setAttribute("percentage", percentage);
		response.sendRedirect("index.jsp");
	} else {
		session.setAttribute("grade", "fail");
		session.setAttribute("total", total);
		session.setAttribute("percentage", percentage);
		response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>