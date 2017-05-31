function affichePrenom() {

	var xhttp = new XMLHttpRequest();

	var prenom = document.getElementById("prenom").value;

	console.log(prenom);

	xhttp.onreadystatechange = function() {

		if (this.readyState == 4 && this.status == 200) {
			console.log(this.responseText);

			document.getElementById("reponse").innerHTML = this.responseText;
		}
	};

	var url = "HelloAjax?prenom=" + prenom;
	console.log(url);
	xhttp.open("GET", url, true);
	xhttp.send();
}
