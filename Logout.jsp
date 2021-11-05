<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Input.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" >
<link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,400&display=swap" rel="stylesheet" />


<title>Logout</title>

</head>

 
<body style="background-color: powderblue; text-align: center">
	    <%
		String finalfares=(String) request.getAttribute("finalfares");
		%>

		
		<br> 
		<br>
		
		<% if(finalfares!=null){ %>
		<br> <br>
		<h2 style="color:rgb(170, 51, 106)">
			Your Total fare is
			<%=finalfares %></h2>
		<%} %>
		
		<br><br><br>
	  <h1 style="color:green">Thank you for visiting!!</h1>
	<footer id="contact" style="bottom:-90px">
	 
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

		
</body>
</html>