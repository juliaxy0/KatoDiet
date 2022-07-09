<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<html lang="en">
<title>Exercise Interface</title>
<meta charset="UTF-8">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style type="text/css">
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Lato", sans-serif
}

.w3-bar, h1, button {
	font-family: "Montserrat", sans-serif
}

.fa-anchor, .fa-coffee {
	font-size: 200px
}

body, html {
	height: 100%;
	line-height: 1.8;
}

/* Full height image header */
.bgimg-1 {
	background-position: center;
	background-size: cover;
	background: url(background.jpeg);
	min-height: 100%;
	font-size: 15px;
}

.style_table {
	text-alignment: centered;
	font-family: monospace;
	background-color: #745c64;
	opacity: 70%;
	border-radius: 20px;
	margin: 50px;
	padding: 50px;
	height: 450px;
	width: 650px;
	color: white;
}

.avatar {
	width: 100px;
	height: 40px;
}

.testbox {
	display: flex;
	justify-content: center;
	align-items: center;
	height: inherit;
	padding: 20px;
}

form {
	width: 100%;
	padding: 20px;
	border-radius: 20px;
	background: #945f91;
	box-shadow: 0 0 8px black;
	text-alignment: centered;
	font-family: monospace;
	opacity: 70%;
	color: white;
}

input, select, textarea {
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 10px;
	width: 235px;
	height: 60px;
	border-radius: 20px;
	padding: 20px;
}

input {
	width: calc(100% - 10px);
	padding: 5px;
}

.inputdata{
	width:110px;
}

input[type="date"] {
	padding: 4px 5px;
}

textarea {
	width: calc(100% - 12px);
	padding: 5px;
}

.item:hover p, .item:hover i, .question:hover p, .question label:hover,
	input:hover::placeholder {
	color: #006622;
}

.item input:hover, .item select:hover, .item textarea:hover {
	border: 1px solid transparent;
	box-shadow: 0 0 3px 0 #006622;
	color: #006622;
}

.item {
	position: relative;
	margin: 10px 0;
}

.flax {
	display: flex;
	justify-content: space-around;
}

.btn-block {
	margin-top: 10px;
	text-align: center;
}

button {
	width: 150px;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background: #57394a;
	font-size: 16px;
	color: #fff;
	cursor: pointer;
}


.btn {
  
  border: none;
  color: black;
  padding-bottom: 10px ;
  margin-right:10px;
  font-size: 16px;
  cursor: pointer;
  width : 10px;
  height: 10px;


}


/* Darker background on mouse-over */

</style>
</head>
<title>User Registration</title>
<script type="text/javascript">
	function validateFitnessForm() {

		if (document.fitnessform.date.value == null
				|| document.fitnessform.date.value == "") {
			alert("Please key-in date");
			return false;
		}
		if (document.fitnessform.time.value == null
				|| document.fitnessform.time.value == "") {
			alert("Please key-in time");
			return false;
		}
		if (document.fitnessform.sport.selectedIndex == 0) {
			alert("Please select your sport.");
			return false;
		}
		if (document.fitnessform.duration.selectedIndex == 0) {
			alert("Please select your duration.");
			return false;
		}

	}

	function validateForm() {
		if (document.myFood.bdate.value == null
				|| document.myFood.bdate.value == "") {
			alert("Please key-in date");
			return false;
		}
		if (document.myFood.foodcat.value == null
				|| document.myFood.foodcat.value == "") {
			alert("Please key-in food category");
			return false;
		}
		if (document.myFood.desc.value == null
				|| document.myFood.desc.value == "") {
			alert("Please key-in food description");
			return false;
		}
		if (document.myFood.calories.value == null
				|| document.myFood.calories.value == "") {
			alert("Please key-in calories intake");
			return false;
		}
	

	}
	
	function validateWeightForm() {
		if (document.myWeight.weight.value == null
				|| document.myWeight.weight.value == "") {
			alert("Please enter weight");
			return false;
		}
		if (document.myWeight.height.value == null
				|| document.myWeight.height.value == "") {
			alert("Please enter height");
			return false;
		}
	

	
</script>


<body>

	<!-- Navbar (sit on top) -->
	<div class="w3-top">
		<div class="w3-bar w3-white w3-card" id="myNavbar">
			<a href="#home" class="w3-bar-item w3-button w3-wide"> <img
				src="d4.png" class="avatar">
			</a>
			<!-- back button -->
			<div></div>
			<!-- Right-sided navbar links -->
			<div class="w3-right w3-hide-small">
				<a href="Login.jsp" class="w3-bar-item w3-button">LOGOUT</a>
			</div>

			<!-- Hide right-floated links on small screens and replace them with a menu icon -->
			<a href="javascript:void(0)"
				class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium"
				onclick=""> <i class="fa fa-bars"></i>
			</a>
		</div>
	</div>

	<!-- Display Grid -->
	<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container"
		id="display">
		<div class="w3-content">
			<div class="w3-twothird">
				<form action="KatoDietController?action=BACK" method="POST">
					<label>Hello User</label> <input type="text" id="userid"
						name="userid" value="${user.userID}" readonly> 
						<label>Would you like to input more data?</label> <input type="submit" value="YES">
				</form>
				<table class="table table-striped table-bordered">
					<tr class="thead-dark">
						<th>UserID</th>
						<th>Date</th>
						<th>Time</th>
						<th>Total Calories</th>
                        <th> </th>
                        <th> </th>
						
					</tr>

					<c:forEach items="${food}" var="food">

						<tr> 
						<form action="KatoDietController" method="POST">
						<td><input class="inputdata" type="text" id="userid"
						name="userid" value="${user.userID}" readonly></td>
						<td><input class="inputdata" type="text" id="bdate"
						name="bdate" value="${food.bdate}" readonly></td>
						<td><input class="inputdata" type="text" id="ftime"
						name="ftime" value="${food.time}" readonly></td>
						<td><input class="inputdata" type="text" id="calories"
						name="foodcalories" value="${food.calories}" ></td> 
                        <td><button class="btn" name="action"value="GETUPDATEFOOD"><i class="fa fa-edit"></i></button></td>
                        
                      
                        <td><button class="btn" name="action"value="DELETEFOOD" onclick="return confirm('Are you sure you want to delete this item');"><i class="fa fa-trash"></i></button></td> 
                        </form>
                        
						</tr>
					</c:forEach>
				</table>
				<table class="table table-striped table-bordered">
					<tr class="thead-dark">
						<th>UserID</th>
						<th>Date</th>
						<th>Time</th>
						<th>Exercise Type</th>
						<th>Duration</th>
						<th>Calories Burned</th>
                        <th> </th>
                        <th> </th>
                      
					</tr>

					<c:forEach items="${exercise}" var="exercise">

						<tr> 
						<form action="KatoDietController" method="POST">
							<td><input class="inputdata" type="text" id="userid"
						name="userid" value="${user.userID}" readonly></td>
							<td><input class="inputdata" type="text" id="bdate"
						name="bdate" value="${exercise.date}" readonly></td>
							<td><input class="inputdata" type="text" id="time" name="time" value="${exercise.time}" readonly></td>
							<td><input class="inputdata" type="text" id="exerciseType" name="exerciseType" value="${exercise.exercise_type}" readonly></td>
							<td><input class="inputdata" type="text" id="exduration" name="exduration" value="${exercise.duration}" readonly></td>
							<td><input class="inputdata" type="text" id="caloriesburn" name="caloriesburn" value="${exercise.caloriesBurn}" readonly></td>
                            <td><button class="btn" name="action" value="GETUPDATEEXERCISE"><i class="fa fa-edit" ></i></button> </td>
                            
                            <td><button class="btn" name="action" value="DELETEEXERCISE"  onclick="return confirm('Are you sure you want to delete this item');"><i class="fa fa-trash" ></i></button> </td></form>
                         </tr>
					</c:forEach>
				</table>
                
				<table class="table table-striped table-bordered">
					<tr class="thead-dark">
						<th>UserID</th>
						<th>Date</th>
						<th>Weight</th>
						<th>BMI</th>
						<th>Status</th>
                        <th> </th>
                        <th> </th>
                     
					</tr>

					<c:forEach items="${weight}" var="weight">

						<tr> 
						<form action="KatoDietController" method="POST">
							<td><input class="inputdata" type="text" id="userid"
						name="userid" value="${user.userID}" readonly></td>
							<td><input class="inputdata" type="text" id="bdate"
						name="bdate" value="${weight.dateday}" readonly></td>
							<td><input class="inputdata" type="text" id="weight" name="weight" value="${weight.weight}" readonly></td>
							<td><input class="inputdata" type="text" id="bmi" name="bmi" value="${weight.bmi}" readonly></td>
							<td><input class="inputdata" type="text" id="status" name="status" value="${weight.status}" readonly></td>
                            <td><button class="btn" name="action" value="GETUPDATEWEIGHT"><i class="fa fa-edit"></i></button> </td>
                            
                            <td><button class="btn" name="action" value="DELETEWEIGHT" onclick="return confirm('Are you sure you want to delete this item');"><i class="fa fa-trash"></i></button> </td></tr>
                            </form>
                           
					</c:forEach>
				</table>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<footer class="w3-container w3-padding-64 w3-center w3-opacity">
		<div class="w3-xlarge w3-padding-32">
			<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
				class="fa fa-instagram w3-hover-opacity"></i> <i
				class="fa fa-snapchat w3-hover-opacity"></i> <i
				class="fa fa-pinterest-p w3-hover-opacity"></i> <i
				class="fa fa-twitter w3-hover-opacity"></i> <i
				class="fa fa-linkedin w3-hover-opacity"></i>
		</div>
		<p>Powered by Rusyaidi, Julia, Syahirah, Zaimi</p>
	</footer>


</body>
</html>