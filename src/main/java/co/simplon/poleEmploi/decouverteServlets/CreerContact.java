package co.simplon.poleEmploi.decouverteServlets;

import java.io.IOException;
import java.util.HashSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.simplon.domaine.Contact;
import co.simplon.domaine.Hobbies;

public class CreerContact extends HttpServlet {

	public void init() throws ServletException {
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HashSet<Hobbies> hobbies = new HashSet<Hobbies>();
		hobbies.add(new Hobbies("Programmation", 10));
		hobbies.add(new Hobbies("Cuisine", 11));

		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String eMail = request.getParameter("eMail");

		Contact monContact = new Contact(nom, prenom, eMail, hobbies);

		request.setAttribute("monContact", monContact);

		request.getRequestDispatcher("AfficherContact.jsp").forward(request,
				response);

	}
}
