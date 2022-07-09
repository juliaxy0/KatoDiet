<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="Viewport" content="width=device-width, initial-scale=1.00">
		<title>KATO DIET</title>
		<link rel="stylesheet" href="loginX.css">
		<script type="text/javascript">
		function validateForm(){
			
			//is user id empty
			var username = document.getElementById("userID").value;
			if(username == null|| username == ""){
				alert("User id must be filled out");
				return false;
			}
			
			//is password empty
			var pass = document.getElementById("pswd").value;
			if(pass==null||pass==""){
				alert("password must be filled out");
				return false;
			}
		}
		</script>
	</head>
	<body style="background-color:#dfcecd;">
		<form action="KatoDietController?action=LOGIN" onsubmit="return validateForm()" name="myLogin" method="POST">
		
			<div class="imagebox">
				
			</div>
			<div class="loginbox">
				<img src ="vecteezy_girl-jogging-while-listening-music-concept_.jpg" class="avatar">
				<label class="label" style="display:block; font-size:2vw; text-align:center;"><b>Login</b></label> <br>
				<p style="color: #b50e0e">${USER_NOTIFICATION}</p>
				<label class="label" for="user">User ID</label> <br>
				<input class="loginboxInput" type="text" id="userID" name="userID" placeholder="enter username here" value="${user.userID}"><br>
				<label class="label" for="pswd"><b>Password</b></label> <br>
				<input class="loginboxInput" type="password" id="pswd" name="password" placeholder="enter password here"><br>
				<input class="submitB" type="submit" id="submit" name="submit" value="LOGIN"> <br>
				<label class="label">new here? <b><a href="#" onclick="window.location.href='Register.jsp'">Sign Up</a></b></label>
			</div>
		</form>
	</body>
</html>
