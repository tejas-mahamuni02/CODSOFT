<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Patrick+Hand&display=swap"
	rel="stylesheet">
<style>
html, body {
	height: 100%
}

.fontfamily {
	font-family: "Patrick Hand", cursive;
	color: white;
}

.inner-div {
	color: #F2B705;
	background-color: #86572E;
}

.inner-div-match {
	background-color: #F2B705;
	color: #86572E;
}

.input-box {
	width: 100%;
	background-color: #F2B705;
	color: #86572E;
}

.btn:hover {
	color: white;
	font-weight: bolder;
	border: 1px solid white;
}

a {
	color: white;
}
.imggroot {
	filter: drop-shadow(5px 5px 10px #000);
}
</style>
</head>

<body>
	<div
		class="container-fluid text-center h-100 p-5 d-flex align-items-center justify-content-center"
		style="background-color: #255059;">

		<div class="w-50 h-50">
			<h1 class="fontfamily">Guess My Number</h1>
			<div class="  border border-1 border-black inner-div row">
				<div class="col-md-3">
					<img alt="grrot" src="./images/groot2.gif" height="300"
						class="imggroot">
				</div>
				<div
					class="col-md-8 d-flex align-items-center justify-content-center flex-column p-5">
					<h1 class="fontfamily">Thanks For Playing Game</h1>
					<h5 class="fontfamily ">Click Yess to Play Again.....</h5>
					<a class="btn  mt-4 fs-6 col-md-5 border border-white text-white"
						href="newgame.jsp">Yess</a>

				</div>
			</div>


		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>

</html>