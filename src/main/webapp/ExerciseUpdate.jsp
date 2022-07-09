<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<html lang="en">
<title>Update Exercise</title>
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

button:hover {
	background: #8B1558;
}
</style>
<script language="javascript" type="text/javascript">
	function validateFitnessForm() {

		if (document.fitnessform.exerciseType.selectedIndex == 0) {
			alert("Please select your sport.");
			return false;
		}
		if (document.fitnessform.exduration.selectedIndex == 0) {
			alert("Please select your duration.");
			return false;
		}

	}


</script>
</head>
<body>
	<div class="w3-row-padding w3-padding-64 w3-container" id="fitness">
		<div class="w3-content">
			<div class="w3-twothird">
				<h1>Yes, I've exercise today!</h1>
				<h5>Please enter your exercise details here</h5>
				<p style="color: #b50e0e">${EXERCISE_NOTIFICATION}</p>


				<form style="background: #745c64;" name="fitnessform"
					action="KatoDietController?action=UPDATEEXERCISE"
					onsubmit="return validateFitnessForm()" method="POST">

					<fieldset class="style-table">
						<legend>Exercise Detail</legend>

						<div class="item">
							<label for="userid">User name:<span>*</span></label> <input
								type="text" id="userid" name="userid" value="${user.userID}"
								readonly>
						</div>

						<div class="item">
							<label for="start">Date :<span>*</span></label> <input
								type="date" id="start" name="date" min="2022-01-01"
								max="2030-12-31" value="${exercise.date}" readonly>
						</div>

						<div class="item">
							<label for="time">Select a time :<span>*</span></label> 
							<input type="time" id="time" name="time" value="${exercise.time}" readonly><i class="fas fa-calendar-alt"></i>
						</div>

						<div class="item">
							<label for="sport">Select a sport :<span>*</span></label> <select
								name="exerciseType" style="width: 45%;">
								<option selected value="${exercise.exercise_type}" disabled selected>Choose exercise type</option>
								<option value="Bicycling">Bicycling</option>
								<option value="Hiking">Hiking</option>
								<option value="Running">Running</option>
								<option value="Swimming">Swimming</option>
								<option value="Walking">Walking</option>
							</select>
						</div>

						<div class="item">
							<label for="duration">Select duration :<span>*</span></label> <select
								name="exduration" style="width: 45%;">
								<option selected value="${exercise.duration}" disabled selected>Choose duration</option>
								<option value="0.5">30 minutes</option>
								<option value="1">1 hour</option>
								<option value="1.5">1 hour 30 minutes</option>
								<option value="2.0">2 hours</option>
								<option value="2.5">2 hours 30 minutes</option>
								<option value="3">3 hours</option>
								<option value="3.5">3 hours 30 minutes</option>
								<option value="4">4 hours</option>
								<option value="4.5">4 hours 30 minutes</option>
								<option value="5">5 hours</option>
							</select>
						</div>

						<div class="btn-block">
							<button type="submit"
								class="w3-button w3-white w3-opacity w3-hover-opacity-off">Update</button>
							<button type="reset"
								class="w3-button w3-white w3-opacity w3-hover-opacity-off">Reset</button>

						</div>


					</fieldset>


				</form>
				<div style="position: absolute; right: 200px; top: 2850px;">
					<iframe src="https://giphy.com/embed/3oKIPavRPgJYaNI97W"
						width="350" height="230" frameBorder="0" class="giphy-embed"
						allowFullScreen></iframe>
					<p>
						<a
							href="https://giphy.com/gifs/animation-yoga-exercise-3oKIPavRPgJYaNI97W">via
							GIPHY</a>
					</p>
				</div>

			</div>
		</div>
	</div>
</body>
</html>