package co.simplon.poleEmploi.decouverteServlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Extend HttpServlet class
public class HelloworldNom extends HttpServlet {

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
		nom = request.getParameter("nom");

		// Actual logic goes here.
		PrintWriter out = response.getWriter();
		out.println("<h1>" + message + nom + "</h1>");
	}

	// public void doPost(HttpServletRequest request, HttpServletResponse
	// response)
	// throws ServletException, IOException {
	// // Set response content type
	// response.setContentType("text/html");
	// nom = request.getParameter("nom");
	//
	// // Actual logic goes here.
	// PrintWriter out = response.getWriter();
	// out.println("<h1>" + message + nom + "</h1>");
	// }

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nom = request.getParameter("nom");

		if (nom == null || nom.isEmpty()) {
			PrintWriter out = response.getWriter();
			out.println("<h1>" + message + "</h1>");

		} else {

			request.setAttribute("nom", nom.toUpperCase());

			request.getRequestDispatcher("/WEB-INF/hello.jsp").forward(request,
					response);
		}

	}

	public void destroy() {
		// do nothing.
	}
}