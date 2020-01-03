<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<html>

<head> <title>exercice 1 page JSP </title></head>

<body>

<table border>

<colgroup >

<col width = 90>

<col width = 300>

</colgroup>

<tr>
<th> N° Ordre </th>
<th> Designation </th>
</tr>
;
  

<c:forEach begin="1" end="20" var="i">
<tr>
<td><c:out value= "${i}"/><br></td>
<td><c:out value="Hallo wie geht's"/><br></td>
  </tr>

</c:forEach>

</table>

</body>

</html>