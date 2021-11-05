<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Registrationform.css">
<title>Registration</title>

<script type="text/javascript">

function Validation(){
	//event.preventDefault();
var uname=document.f1.username.value;
var password=document.f1.password.value;
var repassword=document.f1.retypepassword.value;
var gender=document.getElementById("gender");
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
var email=document.getElementById("email");

if(uname==""||uname==null){
	alert("Username cant be empty");
	document.f1.username.focus();
	return false;
}
 if(password.length<6){
	if(password.length==0){
		alert("Password cant be empty");
		document.f1.password.focus();
		return false;
	}
	else{
		alert("Password must be atleast six characters");
		document.f1.password.focus();
		return false;
}
}
if(repassword.length<=0){
	alert("Retype password cant be empty");
	document.f1.retypepassword.focus();
	return false;
}else if(repassword!=password){
	alert("Please provide a matching password");
	document.f1.retypepassword.focus();
	return false;
}
if(gender.value==""){
	alert("Please choose gender");
	return false;
}
if(!email.value.match(mailformat)){
	alert("Please enter valid email id");
	document.f1.emailaddress.focus();
	return false;
}
/*else{
	document.f1.submit();
}*/
}

</script>
</head>
<body>

<div class="container">
    <div class="content">
       <img src="https://res.cloudinary.com/debbsefe/image/upload/f_auto,c_fill,dpr_auto,e_grayscale/image_fz7n7w.webp" alt="header-image" class="cld-responsive">
            <h1 class="form-title">Register Here</h1>
           <form name="f1" action="Registrationdata" method="post" onsubmit="return Validation()">
               <input type="text" placeholder="USERNAME" name="username" >
               <input type="password" placeholder="PASSWORD" name="password" >
               <input type="password" placeholder="RETYPE PASSWORD" name="retypepassword" >
               
               <p style="font-size:15px;color:grey">GENDER:
                <select name="Gender" id="gender">
                    <option>MALE</option>
                    <option>FEMALE</option>
                    <option>OTHERS</option>
                </select>
               
                <input type="email" placeholder="EMAIL ADDRESS" name="emailaddress" id="email" >
                <button type="submit" >Submit</button>
            </form>
        </div>
 </div>

</body>
</html>