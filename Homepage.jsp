<%@page import="java.util.*"%>
<%@page import="com.busticket.Buses"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.busticket.Buseslist"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Input.css">
<title>Bus Ticketing System</title>

</head>
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" >
<link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,400&display=swap" rel="stylesheet" />
<body style="background-color: powderblue; text-align: center">

	<%
	Set<String> stops = new HashSet<>();
	stops.addAll(Arrays.asList("A", "B", "C", "D", "E"));
	pageContext.setAttribute("stops", stops);
	%>


	<div class="nav">
		<input type="checkbox" id="nav-check">
		<div class="nav-header">
			<div class="nav-title">Bus Ticketing System</div>
		</div>
		<div class="nav-btn">
			<label for="nav-check"> <span></span> <span></span> <span></span>
			</label>
		</div>

		<div class="nav-links">
			<a href="Aboutus.html" target="_blank">About us</a> 
			<a href="" target="_blank">Offers</a>
			<a href=" "
				target="_blank">Contact</a>
		</div>
	</div>

	<br>
	<br>
	<br>
    <%
    String username=(String)request.getAttribute("username");
    %>
    <%
    if(username!=null){%>
    <h3>Welcome <%= username %></h3>
    <% } %>
    <br><br>
    
	<form name="f1" action="Busesaccordingtoroutes" method="post">
		<br>
		<p style="font-size: 20px">
			Enter source: <select name="source" id="stops">
				<c:forEach var="stop" items="${stops}">
					<!-- option value=${stop}>A</option-->
					<option value="${stop }">${stop }</option>
				</c:forEach>
			</select> <br> <br> Enter destination: <select name="destination"
				id="stops">
				<c:forEach var="stop" items="${stops}">
					<option value="${stop }">${stop }</option>
				</c:forEach>
			</select> <br>
			<br>

		</p>
		<button type="submit" value="Find buses" class="findbusesbtn">Find
			buses</button>
		
			
	  <footer id="contact">
	 
        <div id="icon-container">
     
      <div id="icon">
        <a href="https://twitter.com/redBus_in?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor">
          <i class="fab fa-twitter"></i>
      </a>
      </div>
      &nbsp;
       <div id="icon">
      <a href="https://www.instagram.com/prathima___/">
        <i class="fab fa-instagram"></i>
      </a>
      </div>
      &nbsp;
      <div id="icon">
      <a href="https://www.facebook.com/redBus.in/">
      <i class="fab fa-facebook-f"></i>
      </a>
      </div>
       &nbsp;
       <div id="icon">
      <a href="https://www.redbus.in/info/contactus">
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