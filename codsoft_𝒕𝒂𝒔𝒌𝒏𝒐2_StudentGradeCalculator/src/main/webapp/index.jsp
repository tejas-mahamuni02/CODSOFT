<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<title>Document</title>
<style>
html, body {
	height: 100%
}

.divshadow {
	box-shadow: 4px 8px 20px 8px black;
	width: 60%;
	height: 70%;
}

.div-left {
	background-color: #00D2D3;
}

.div-right {
	background-color: #ECF0F1;
}

.submitbtn {
	background-color: #00D2D3;
	color: #ECF0F1;
}

.resultbox {
	height: 90%;
}

.resultheadline {
	background-color: #01A3A5;
}

.btn:hover {
	border: 2px solid black;
}
</style>
</head>

<body>

	<div
		class="container-fluid text-center h-100 p-5 d-flex align-items-center justify-content-center">
		<div class="row border border-1 rounded-3 divshadow">
			<c:choose>
				<c:when test="${empty total}">
					
					<div
						class="col-md-4 div-left rounded-start-3 d-flex flex-column p-0 ">
						<div
							class="d-flex h-100 flex-column justify-content-evenly align-items-center ">
							<h3 class="text-white fw-bold">Enter Your Marks To Calculate
								Grade</h3>
						</div>
					</div>
					<div class="col-md-8 div-right rounded-end-3 text-center">
						<form action="Response.jsp"
							class=" h-100 d-flex flex-column justify-content-center align-items-center">
							<input type="number" min="0" max="100"
								class="w-75 rounded-4 form-control"
								placeholder="Enter Physics Marks" id="phy" name="phy" oninput=""
								required><br> <input type="number" min="0"
								max="100" class="w-75 rounded-4 form-control"
								placeholder="Enter Chemistry Marks" id="chem" name="chem"
								required><br> <input type="number" min="0"
								max="100" class="w-75 rounded-4 form-control"
								placeholder="Enter Maths Marks" id="maths" name="maths" required><br>
							<input type="number" min="0" max="100"
								class="w-75 rounded-4 form-control"
								placeholder="Enter Bio Marks" id="bio" name="bio" required><br>
							<input type="submit" class="btn submitbtn py-2 rounded-pill"
								value="Show Result">
						</form>
					</div>
				</c:when>
				<c:otherwise>
					<div class="col-md-4 div-right rounded-start-3 p-0 ">
						<img alt="" src="./images/result.png" class="image w-75 mt-5 ">
					</div>

					<div
						class="col-md-8 div-left rounded-end-3 d-flex flex-column p-0 ">
						<div
							class="d-flex h-100 flex-column justify-content-evenly align-items-center  ">
							<h1 class="text-white fw-bold">Result</h1>
							<p class="fs-5 fw-bold">Percentage :- ${percentage } %</p>
							<p class="fs-5 fw-bold">Grade :- ${grade}</p>
							<p class="fs-5 fw-bold">Total :- ${Math.floor(total)} Marks</p>
							<p class="fs-6 fw-bold text-white">Are You Want To Calculate
								Percntage one more time ???</p>
							<div>
								<a class="btn div-right py-2 rounded px-5 fw-bold"
									href="newresult.jsp">Yess</a>
								<a class="btn div-right py-2 rounded px-5 fw-bold"
									href="thankspage.jsp">No</a>
							</div>

						</div>
						<div
							class="flex-shrink-1 rounded-bottom-3 resultheadline fs-4 text-white fw-bold">
							<c:if test="${grade=='fail'}">
							You Are Fail &#x1F614; Better Luck Next Time &#128077;!!!
							</c:if>
							<c:if test="${grade!='fail'}">
							Congratulations !!! &#x1F389; You Are Pass
							</c:if>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>

</html>