package com.demo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONObject;

@WebServlet("/convert")
public class CurrencyConverterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String API_KEY = "1ac31f625003f596bdbac68c";
	private static final String API_URL = "https://v6.exchangerate-api.com/v6/" + API_KEY + "/latest/";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String amountStr = request.getParameter("amount");
		String fromCurrency = request.getParameter("fromCurrency");
		String toCurrency = request.getParameter("toCurrency");

		double amount = Double.parseDouble(amountStr);
		double conversionRate = getConversionRate(fromCurrency, toCurrency);
		double convertedAmount = amount * conversionRate;

		request.setAttribute("givenamt", amountStr);
		request.setAttribute("fromCurrency", fromCurrency);
		request.setAttribute("toCurrency", toCurrency);
		request.setAttribute("convertedAmount", convertedAmount);
		request.getRequestDispatcher("result.jsp").forward(request, response);
	}

	private double getConversionRate(String fromCurrency, String toCurrency) throws IOException {
		URL url = new URL(API_URL + fromCurrency);
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		connection.setRequestMethod("GET");

		BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
		String inputLine;
		StringBuilder content = new StringBuilder();
		while ((inputLine = in.readLine()) != null) {
			content.append(inputLine);
		}
		in.close();
		connection.disconnect();

		JSONObject json = new JSONObject(content.toString());
		JSONObject conversionRates = json.getJSONObject("conversion_rates");

		return conversionRates.getDouble(toCurrency);
	}

}
