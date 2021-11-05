<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.busticket.Buses"%>
<%@page import="com.busticket.Busesaccordingtoroutes"%>
<%@page import="java.util.Iterator"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Input.css">
<title>Bus booking</title>
</head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" >
<link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,400&display=swap" rel="stylesheet" />
<body style="text-align: center; background-color: powderblue">
	<form action="Ticketing" method="post">
		<%
		String source = (String) request.getAttribute("source");
		String destination = (String) request.getAttribute("destination");
		List<Buses> busobj = (List<Buses>) request.getAttribute("busesobj");
		%>
		<%
		session.setAttribute("busesaccordingtoroutes", busobj);
		%>
		<br> <br> <br>
		<p style="font-family: verdana; font-size: 15px">Your selected
			source:${source}</p>
		<p style="font-family: verdana; font-size: 15px">Your selected
			destination:${destination }</p>
		<br> <br>

		<%
		if (busobj.size() == 0) {
		%>
		<p>No buses available</p>
		<button type="submit" value="backbutton" name="back" class="findbusesbtn">Back</button>
		<%
		}
		%>
		<%
		if (busobj.size() > 0) {
		%>
		<div style="width: 100px; margin: 0 auto;">
			<table>
				<tr>
					<th style="text-align: center">Buses</th>
					<th>Routes</th>

					<%
					for (Buses bus : busobj) {
					%>
				
				<tr>
					<td><%=bus.getbusname()%></td>
					<td><%=bus.getroute()%></td>

				</tr>
				<%
				}
				%>
			</table>
		</div>
		<br> <br>
		<p style="color: rgb(165, 42, 42)">
			Enter the number of tickets:<input type="text" name="tickets"><br>
			<br> Enter the type of tickets: <select name="tickettype">
				<option value="Normal">Normal</option>
				<option value="Delux">Delux</option>
			</select>
		</p>
		<br>
		<button type="submit" value="busavailability" name="busavailability"
			class="findbusesbtn">Check Bus availability</button>
			
			<footer id="contact">
	 
        <div id="icon-container">
     
      <div id="icon">
        <a href="#">
          <i class="fab fa-twitter"></i>
      </a>
      </div>
      &nbsp;
       <div id="icon">
      <a href="#">
        <i class="fab fa-instagram"></i>
      </a>
      </div>
      &nbsp;
      <div id="icon">
      <a href="#">
      <i class="fab fa-facebook-f"></i>
      </a>
      </div>
       &nbsp;
       <div id="icon">
      <a href="#">
        <i class="far fa-envelope"></i>
      </a>
      </div>
      &nbsp;
      <div id="icon">
      <a href="#">
        <!--  div id="icon"-->
          <i class="fab fa-free-code-camp"></i>
        
    </a>
    </div>
    
    </div>
    <div id="para1">
        <p>  copy 2020-2021, *Bus Ticket*</p>
        </div>
 
 
</footer>
	</form>

	<%
	}
	%>

</body>
</html>

