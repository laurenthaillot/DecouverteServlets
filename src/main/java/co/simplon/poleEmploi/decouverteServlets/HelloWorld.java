package co.simplon.poleEmploi.decouverteServlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Extend HttpServlet class
public class HelloWorld extends HttpServlet {

	private String message;
	private String nom;

	public void init() throws ServletException {
		// Do required initialization
		message = "Hello World ";
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Set response content type
		response.setContentType("text/html");
		nom = request.getParameter(nom);

		// Actual logic goes here.
		PrintWriter out = response.getWriter();
		out.println("<h1>" + message + nom + "</h1>");
	}

	public void destroy() {
		// do nothing.
	}
}