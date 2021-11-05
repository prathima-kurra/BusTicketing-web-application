<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.busticket.Users"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Input.css">

<title>Seat reservation</title>

<script type="text/javascript">
var mywindow;
function openpopup(){
	mywindow=window.open("Printtickets.jsp","_blank","toolbar=yes,scrollbars=yes,height=400,width=400,top=100,left=100");
}

history.forward();

/*function windowisopen(){
const openedwindow="http://localhost:8082/BusTicketing/Exit.jsp";
var logoutbutton=document.getElementById("Logout");
if(openedwindow.closed && logoutbutton.clicked==false){
alert("Please click on logout button");	
}
}*/
</script>
</head>
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" >
<link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,400&display=swap" rel="stylesheet" />

<body style="text-align: center; background-color: powderblue">

	<br>
	<br>
	
	<form action="Users" method="post">
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	
	<button type="submit" name="Logout" value="Logout" id="Logout"  class="findbusesbtn">Logout</button>
		<h3>Seat confirmation</h3>
		
		<br>
		<%
		//int fare=(int)session.getAttribute("fare");
		//List<Integer> totalfare = (List<Integer>) session.getAttribute("totalfare");
		String bus = (String) session.getAttribute("selectedbus");
		%>

		<p>
			Your seat is confirmed in
			<%=bus%></p>
		<br> <br>

		<p>Click on continue to continue booking your tickets</p>
		<button type="submit" name="Continue" value="Continue"
			class="findbusesbtn">Continue</button>
		<br> <br> <br>

		<button type="submit" name="Printtickets" class="findbusesbtn"
			onclick="openpopup()">Print tickets</button>
		<br> <br>

 <footer id="contact" style="bottom:-50px">
	 
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