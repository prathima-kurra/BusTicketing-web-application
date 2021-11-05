<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.busticket.Bookedseats"%>
<%@page import="java.util.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Print tickets</title>
</head>
<link rel="stylesheet" href="Input.css">
<body style="text-align: center; background-color: powderblue">
<%

List<Bookedseats> displaylist=(List<Bookedseats>)session.getAttribute("displaylist");
%>
<br><br>


<div style="width: 250px; margin: 0 auto;">
			<h3>Total tickets booked</h3>
			<table style="text-align: center">
				<tr>
					<th style="text-align: center">Selected bus</th>
					<th>Ticket type</th>
					<th>Tickets</th>
					<th>Fare</th>
				</tr>
				<c:forEach items="${displaylist }" var="seatconfirm">
					<tr>
						<td>${seatconfirm.selectedbus }</td>
						<td>${seatconfirm.tickettype }</td>
						<td>${seatconfirm.tickets }</td>
						<td>${seatconfirm.fare }</td>

					</tr>
				</c:forEach>
			</table>
		</div>
		<br><br>

</body>
</html>