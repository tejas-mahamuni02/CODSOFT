<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <title>Document</title>
  <style>
    html,
    body {
      height: 100%
    }

    .divshadow {
      box-shadow: 4px 8px 20px 8px #D58ACA;
      width: 60%;

    }

    .divback {
      background-color: #ECF0F1;
    }

    .submitbtn {
      background-color: #675AFF;
      color: #ECF0F1;
    }

    .submitbtn:hover {
      border: 2px solid black;
    }
  </style>
</head>

<body>

  <div class="container-fluid text-center h-100 p-5 d-flex align-items-center justify-content-center">
    <div class=" border border-1 rounded-3 divshadow">
      <form action="" class="form">
        <div class="d-flex flex-column justify-content-evenly align-items-center divback rounded-3 text-center p-5">
          <p class="fs-2 fw-bold">Conversion Result</p>
          <p class="fs-5 fw-bold">${givenamt} ${fromCurrency} is equal to ${convertedAmount} ${toCurrency}</p>
          </p>



          <a href="index.jsp" class="btn submitbtn py-2 rounded-pill">Convert Another Amount</a>
        </div>
      </form>


    </div>
  </div>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</body>

</html>
