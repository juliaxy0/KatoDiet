<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="Viewport" content="width=device-width, initial-scale=1.00">
		<title>KATO DIET</title>
		<link rel="stylesheet" href="registerX.css">
		<script type="text/javascript">
			function validateForm(){
				//is full name empty
				var fullName = document.myRegister.fname.value;
				if(fullName==null||fullName==""){
					alert("Full name must be filled out");
					return false;
				}
				
				//is user id empty
				var username = document.myRegister.user.value;
				if(username == null|| username == ""){
					alert("User id must be filled out");
					return false;
				}
				
				//is password empty
				var pass = document.myRegister.pswd.value;
				if(pass==null||pass==""){
					alert("password must be filled out");
					return false;
				}
				
				//is confirm password matched with password
				var password = document.myRegister.pswdR.value;
				if(password != pass){
					//is confirm password empty
					if(password == null || password == ""){
						alert("Confirm Password must be filled out");
						return false;
					}
					alert("The password is not matched");
					return false;
				}
				
				//is date of birth empty
				var dob = document.getElementById("DOB").value;
					if(!dob){
						alert("Date of birth must be setted");
						return false;
					}
				
				//is any gender not selected
				var genderM = document.getElementById("male").checked;
				var genderF = document.getElementById("female").checked;
				if(genderM != true || genderF != true){
					if(genderM == true){
						return true;
					}
					if(genderF == true){
						return true;
					}
					alert("Please select a gender");
					return false;
				}
			}
		</script>
	</head>
	<body style="background-color:#dfcecd;">
		<form action="KatoDietController?action=ADDUSER" name="myRegister" onsubmit="return validateForm()" method="POST">
			<div class="imagebox">
				
			</div>
			<div class="loginbox">
				<img src ="vecteezy_girl-jogging-while-listening-music-concept_.jpg" class="avatar">
				<label class="label" style="display:block; font-size:2vw; text-align:center;"><b>Register</b></label> <br>
				<p style="color: #b50e0e">${USER_NOTIFICATION}</p>
				<label class="label" for="fname">Full Name:</label> <br>
				<input class="loginboxInput" type="text" id="fname" name="fullname" placeholder="enter your full name"><br>
				<label class="label" for="user">User ID:</label> <br>
				<input class="loginboxInput" type="text" id="user" name="userID" placeholder="enter your user ID here"><br>
				<label class="label" for="pswd"><b>Password:</b></label> <br>
				<input class="loginboxInput" type="password" id="pswd" name="password" placeholder="enter password here"><br>
				<label class="label" for="pswdR"><b>Confirm Password:</b></label> <br>
				<input class="loginboxInput" type="password" id="pswdR" name="pswdR" placeholder="enter password here" ><br>
				<label class="label" for="DOB">Date Of Birth:</label> <br>
				<input class="loginboxInput" type="date" id="DOB" name="BOD" ><br>
				<label class="label">Gender:</label> <br>
				<label style="color:black;"for="male">Male</label>
				<input class="loginboxInput" type="radio" id="male" name="gender" value="male"">
				<label style="color:black;"for="female">Female</label>
				<input class="loginboxInput" type="radio" id="female" name="gender" value="female" >
				<input class="submitB" type="submit" id="submit" name="submit" value="REGISTER"><br>
				<label class="label">already have an account? <b><a href="#" onclick="window.location.href='Login.jsp'">Sign In!</a></b></label></form>
			</div>
		</form>
		<script type="text/javascript" src="index.js">
		
		</script>
	</body>
</html>