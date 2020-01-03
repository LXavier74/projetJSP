<%@page import="jsp01.classes.Personne"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.Date" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Bonjour Monde! <%= new Date() %></h1> 
<%
 for(int i=0;i<10;i++)
	 out.append("HELLO"+i+"<br/>");
%>


<h1>Chiffres pair</h1>
<%
 for(int i=0;i<10;i++)
	 if(i%2==0)
	 {
	 out.append(i+"<br/>");
	 }
%>


<a href="Menu?choix=1"> choix 1 </a>
<a href="Menu?choix=2"> choix 2 </a>


<%
	Personne op = (Personne) session.getAttribute("mapersonne");
if(op!=null) {
%>
 <ul>
 <li> <%= op.getNom() %></li>
  <li> <%= op.getPrenom() %></li>
 </ul>
<%
}
%>
<br/>
<a href="Menu?choix=2">Home</a>
<a href="Menu?choix=3">Exo 1</a>

</body>
</html>