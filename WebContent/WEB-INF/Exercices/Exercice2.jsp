<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>

<head> <title>Exercice 2 JSP </title> </head>

<body>

<ol type= 1>

<%--
out.println(‘’<ol type=1>’’);
out.println(‘’<li> <A HREF=‘’Hiver.html’’>Hiver</A> </li>’’);
out.println(‘’<li> <A HREF=‘’Printemps.html’’>Printemps
</A> </li>’’);
out.println(‘’<li> <A HREF=‘’Ete.html’’>Eté </A> </li>’’);
out.println(‘’<li> <A HREF=‘’Autonne.html’’>Automne </A>
</li>’’);
out.println(‘’</ol>’’);
--%>

<c:forTokens var="token" items="hiver;printemps;ete;automne"  delims=";">
 <li> <a href= '${token}.html'><c:out value="${token}"/> </a><br> </li>
</c:forTokens>


</OL>

</body></html>