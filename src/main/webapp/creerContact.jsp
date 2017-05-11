<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Créer un contact</title>
</head>
<body>
		<h1 class="tab-active">Créer un contact</h1>

		<form action="creercontact.do" method="post">
			</br>
			<div class="top-row">
				<div class="champs">
					<label> Prénom<span class="req"></span>
					</label> <input type="text"  name="prenom" required autocomplete="off" />
				</div>

				<div class="champs">
					<label> Nom<span class="req"></span>
					</label> <input type="text" name="nom" required autocomplete="off" />
				</div>
			</div>

			<div class="champs">
				<label> Adresse E-mail<span class="req"></span>
				</label> <input type="text" name="eMail" required autocomplete="off" />
			</div>
	
			<div>
				<p></p>
				<p>
				<button type="submit" class="button-block"><p>Valider</p></button>
				</p>
				
			</div>
		</form>



</body>
</html>