<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="jsp01.classes.Personne" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>TEST : <%= request.getParameter("choix") %></h1>
<%
Personne p;
p = new Personne();
p.setNom("La");
p.setPrenom("Xavier");
session.setAttribute("mapersonne",p);
 %>
 
 
 <ul>
 <li> <%= p.getNom() %></li>
  <li> <%= p.getPrenom() %></li>
 </ul>
</body>
</html>