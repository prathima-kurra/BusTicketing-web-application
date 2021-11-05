<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.busticket.Buses"%>
<%@page import="java.util.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Input.css">
<title>Book Tickets</title>
</head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" >
<link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,400&display=swap" rel="stylesheet" />
<body style="background-color: powderblue; text-align: center">
	<form action="Generatefare" method="post">
		<br>
		<br><br><br><br>
		<%
		String message=(String)request.getAttribute("message");
		%>
		<%
        List<Buses> busobj = (List<Buses>) request.getAttribute("busobjbasedontickets");
		Set<String> busnames = (Set<String>) request.getAttribute("busnames");
		String tickettype = (String) request.getAttribute("tickettype");
		%>
        <%
        if(message!=null){
        %>
        <p style="color:green">Please choose one option</p>
        <%} %>
		<%
		int tickets = (int) request.getAttribute("tickets");
		HttpSession s = request.getSession();
		s.setAttribute("busobj", busobj);
		s.setAttribute("busnames", busnames);
		s.setAttribute("tickettype", tickettype);
		s.setAttribute("tickets", tickets);
		%>
		
		<h4>Buses available for you</h4>
		<%
		if (busnames.size() > 0) {
		%>
		<c:forEach var="buses" items="${busnames }">
		<input type="radio" name="selectedbus" value="${buses }"/>${buses }
		</c:forEach>
		<br> 
		<br>
		<button type="submit" value="BookTickets" name="BookTickets" class="findbusesbtn">Book
			tickets</button>
		<%
		} else {
		%>
		<p>Sorry,Bus is full!!</p><br><br>
		<button type="submit" name="Backbutton" class="findbusesbtn">Back</button>
		<%
		}
		%>
		
		 <footer id="contact" style="bottom:-300px">
	 
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
</body>
</html>