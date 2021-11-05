<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Input.css">
<title>Failure page</title>
</head>
<body style="background-color: powderblue; text-align: center">
<br><br>
<%
String message=(String)request.getAttribute("message");
%>
<form action="Homepage.jsp">
<p>
Failure message:<%= message %>
</p>
<button type="submit" value="Backbutton" name="Backbutton" class="findbusesbtn">Back</button>
</form>
</body>

</html>