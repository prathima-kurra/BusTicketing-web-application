<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Loginpage.css">
<title>Login page</title>

<script type="text/javascript">
history.forward();
</script>

</head>


<body style="background-color: powderblue">
<%
String message=(String)request.getAttribute("message");
%>

	<div class="auth">

		<%if(message!=null){%>
		<p style="text-align: center; color: yellow">
			<%= message %>
		</p>
		<%} %>
		<div class="auth-container">
		<h1>Welcome to Bus Ticketing</h1>
			<div class="auth-logo">
				<img
					src="https://mobisoftinfotech.com/assets/images/og-images/Bus-Booking-Software-And-Tracking-App.png" />
			</div>
			<form name="f1" action="ValidateUsernameandPassword" method="post"
				class="auth-form">
				<h1>Sign in</h1>
				<div class="auth-input error">
					<label for="username" id="username"> Username </label> <input
						type="text" name="username" id="name" />
					<p class="auth-error">Username is a required field</p>
				</div>
				<div class="auth-input">
					<label for="password" id="password"> Password </label> <input
						type="password" name="password" id="password" />
				</div>

				<button type="submit" name="submit" class="auth-btn" >Sign
					in</button>
			</form>
			<div class="auth-bottom">
				Don't have an account yet? <a href="Register.jsp"
					style="color: green">Sign up</a>
			</div>
		</div>
	</div>
</body>
</html>

