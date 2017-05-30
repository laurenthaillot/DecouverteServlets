<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Affiche un contact</title>
</head>
<body>
		<h1 class="tab-active">Afficher un contact</h1>

		
				<div class="champs">
					<label> Prénom : <span class="req"></span>
					</label> ${monContact.nom}
				</div>

				<div class="champs">
					<label> Nom : <span class="req"></span>
					</label> ${monContact.prenom}
				</div>
			

				<div class="champs">
					<label> Adresse E-mail : <span class="req"></span>
					</label> ${monContact.email}
				</div>
				
				<div class="champs">
					<label> Hobby : <span class="req"></span>
					</label> 
					<c:forEach var="monHobby" items="${ monContact.hobbies }" >
		            <li>${monHobby.hobby } </li>  
		        </c:forEach>
					
				</div>	

</body>
</html>