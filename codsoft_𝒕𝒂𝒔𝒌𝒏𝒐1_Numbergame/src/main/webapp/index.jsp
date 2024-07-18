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
	color: #86572E;
	background-color: #F2B705;
}

.btn:hover {
	color: white;
	font-weight: bolder;
	border: 1px solid white;
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

		<div class="w-75 h-50 ">
			<h1 class="fontfamily">Guess My Number</h1>
			<div
				class="h-100 w-100 border border-1 border-black row row-cols-md-3"
				style="background-color: #21464E;">
				<div class="col-md-3">
					<img alt="grrot" src="./images/groot2.gif" height="300"
						class="imggroot">
				</div>
				<c:if test="${empty msg}">
					<%
					session.setAttribute("attempts", 0);
					session.setAttribute("randomnum", 0);
					%>

					<div
						class="col-md-6 d-flex align-items-center justify-content-center flex-column">
						<form action="NumberCheck.jsp">
							<p class="fontfamily fs-3 text-wrap">Enter Your Guess(between
								1 To 100)</p>
							<input class="py-1 input-box fontfamily fs-2 text-center"
								type="text" name="num" id="checkme" oninput="checknum()"
								autofocus required> <input type="submit"
								class="btn inner-div mt-4 fs-5">
						</form>
					</div>
					<div class="col-md-3 d-flex justify-content-evenly flex-column">

						<div class="py-2 fontfamily inner-div fs-2">Higher</div>
						<div class="py-2 fontfamily inner-div fs-4">Lower</div>
					</div>
				</c:if>
				<c:if test="${msg=='Higher'}">
					<div
						class="col-md-6 d-flex align-items-center justify-content-center flex-column">
						<form action="NumberCheck.jsp">
							<p class="fontfamily fs-3 text-wrap">Enter Your Guess(between
								1 To 100)</p>
							<input class="py-1 input-box fontfamily fs-2 text-center"
								type="text" name="num" id="checkme" oninput="checknum()"
								autofocus required> <input type="submit"
								class="btn inner-div mt-4 fs-5">
						</form>
					</div>
					<div class="col-md-3 d-flex justify-content-evenly flex-column">

						<div class="py-2 fontfamily inner-div-match fs-2">Higher</div>

						<div class="py-2 fontfamily inner-div fs-4">Lower</div>
					</div>
				</c:if>
				<c:if test="${msg=='Lower'}">
					<div
						class="col-md-6 d-flex align-items-center justify-content-center flex-column">
						<form action="NumberCheck.jsp">
							<p class="fontfamily fs-3 text-wrap">Enter Your Guess(between
								1 To 100)</p>
							<input class="py-1 input-box fontfamily fs-2 text-center"
								type="text" name="num" id="checkme" oninput="checknum()"
								autofocus required> <input type="submit"
								class="btn inner-div mt-4 fs-5">
						</form>
					</div>
					<div class="col-md-3 d-flex justify-content-evenly flex-column">
						<div class="py-2 fontfamily inner-div fs-4">Higher</div>
						<div class="py-2 fontfamily inner-div-match fs-2">Lower</div>
					</div>
				</c:if>
				<c:if test="${msg=='correct'}">

					<div
						class="col-md-8 m-auto d-flex justify-content-evenly flex-column">
						<div class="py-1 fontfamily inner-div-match fs-2">Correct Guesss!!!!</div>

						<h5 class="fontfamily mt-2">You Attempted ${attempts} Times</h5>
						<h5 class="fontfamily">Finally !!!!! You Done It &#128513;</h5>

						<h5 class="fontfamily ">Are You Want to Play Again ???</h5>

						<div class="row g-4">

							<a class="btn inner-div mt-4 fs-6 col-md-5" href="newgame.jsp">Yess</a>
							<div class="col-md-2"></div>

							<a class="btn inner-div mt-4 fs-6 col-md-5" href="thankspage.jsp">Noo</a>
						</div>

					</div>
				</c:if>

			</div>

			<c:if test="${msg!='correct'}">
				<h5 class="fontfamily">Current Attempts ${attempts}</h5>
				<c:if test="${randomnum!=0}">
					<h5 class="fontfamily">My Number is ${randomnum}</h5>
				</c:if>

			</c:if>

		</div>
	</div>
	<script type="text/javascript">
		function checknum() {
			let num = parseInt(document.getElementById("checkme").value);

			if (isNaN(num)) {
				alert("Please enter a valid number.");
			} else if (num > 100 || num < 1) {
				alert("Please enter a number between 1 and 100.");
			} else {
				console.log("Number is within the valid range: " + num);
				// Additional logic for valid numbers can be added here
			}
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>

</html>