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
      <form action="convert" class="form" method="post">
        <div class="d-flex flex-column justify-content-evenly align-items-center divback rounded-3 text-center p-5">
          <p class="fs-2">Currency Converter</p>
          <div class="form-floating w-75 mb-3">
            <input type="number" class="form-control" id="floatingInput" placeholder="name@example.com" name="amount"
              required>
            <label for="floatingInput">Enter Amount</label>
          </div>
          <div class="form-floating w-75 mb-3">
            <select id="floatingFromCurrency" class="form-select" name="fromCurrency">
              <option value="USD" selected>USD - United States Dollar</option>
              <option value="EUR">EUR - Euro</option>
              <option value="GBP">GBP - British Pound Sterling</option>
              <option value="JPY">JPY - Japanese Yen</option>
              <option value="AUD">AUD - Australian Dollar</option>
              <option value="CAD">CAD - Canadian Dollar</option>
              <option value="CHF">CHF - Swiss Franc</option>
              <option value="CNY">CNY - Chinese Yuan</option>
              <option value="INR">INR - Indian Rupee</option>
              <option value="NZD">NZD - New Zealand Dollar</option>

            </select>
            <label for="floatingFromCurrency">From Which Currency</label>
          </div>
          <div class="form-floating w-75 mb-3">
            <select id="floatingFromCurrency" class="form-select" name="toCurrency">
              <option value="USD">USD - United States Dollar</option>
              <option value="EUR" selected>EUR - Euro</option>
              <option value="GBP">GBP - British Pound Sterling</option>
              <option value="JPY">JPY - Japanese Yen</option>
              <option value="AUD">AUD - Australian Dollar</option>
              <option value="CAD">CAD - Canadian Dollar</option>
              <option value="CHF">CHF - Swiss Franc</option>
              <option value="CNY">CNY - Chinese Yuan</option>
              <option value="INR">INR - Indian Rupee</option>
              <option value="NZD">NZD - New Zealand Dollar</option>
            </select>
            <label for="floatingFromCurrency">From Which Currency</label>
          </div>


          <input type="submit" class="btn submitbtn py-2 rounded-pill" value="Show Result">
        </div>
      </form>


    </div>
  </div>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</body>

</html>