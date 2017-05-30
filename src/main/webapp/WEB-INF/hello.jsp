<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello World</title>
</head>
<body>


<h1>1 - Bonjour ${nom} </h1>
<h1>2 - ${param.nom }</h1>
<h1>3 - ${param['nom']}</h1>
<h1>4 - ${requestScope.nom}</h1>
<h1>5 - <%= request.getParameter("nom") %></h1>
<h1>6 - <%= request.getAttribute("nom") %></h1>
<h1>7 - Cookie - ${cookie}</h1>
<h1>8 - User Agent - <%= request.getHeader("user-agent") %></h1>
<h1>8bis - ${header["user-agent"]} </h1>


<div id="demo"></div>

<script>
var txt = "";

txt += "<H1>9 - Quelques Infos en JAVASCRIPT : </H1>";
txt += "<p>User-agent header: " + navigator.userAgent + "</p>";
txt += "<p>Browser CodeName: " + navigator.appCodeName + "</p>";
txt += "<p>Browser Name: " + navigator.appName + "</p>";
txt += "<p>Browser Version: " + navigator.appVersion + "</p>";
txt += "<p>Cookies Enabled: " + navigator.cookieEnabled + "</p>";
txt += "<p>Browser Language: " + navigator.language + "</p>";
txt += "<p>Browser Online: " + navigator.onLine + "</p>";
txt += "<p>Platform: " + navigator.platform + "</p>";

document.getElementById("demo").innerHTML = txt;
</script>

</body>
</html>

</body>
</html>