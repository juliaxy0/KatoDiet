
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
		if (document.myFood.ftime.value == null
				|| document.myFood.ftime.value == "") {
			alert("Please key-in time ");
			return false;
		}
		if (document.myFood.category.value == null
				|| document.myFood.category.value == "") {
			alert("Please key-in food category");
			return false;
		}
		if (document.myFood.subcategory.value == null
				|| document.myFood.subcategory.value == "") {
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
	}
	//dropdown list for food
	function dropdownlist(listindex) {
		document.myFood.subcategory.options.length = 0;
		switch (listindex) {
		case "Carbohydrate":
			document.myFood.subcategory.options[0] = new Option("Select Food",
					"");
			document.myFood.subcategory.options[1] = new Option("Rice", "Rice");
			document.myFood.subcategory.options[2] = new Option("Bread",
					"Bread");
			document.myFood.subcategory.options[3] = new Option("Pasta",
					"Pasta");
			document.myFood.subcategory.options[4] = new Option("Potatoes",
					"Potatoes");
			break;

		case "Protein":
			document.myFood.subcategory.options[0] = new Option("Select Food",
					"");
			document.myFood.subcategory.options[1] = new Option("Fish", "Fish");
			document.myFood.subcategory.options[2] = new Option("Meat", "Meat");
			document.myFood.subcategory.options[3] = new Option("Egg", "Egg");
			document.myFood.subcategory.options[4] = new Option("Yogurt",
					"Yogurt");
			break;

		case "Fat":
			document.myFood.subcategory.options[0] = new Option("Select Food",
					"");
			document.myFood.subcategory.options[1] = new Option("Butter",
					"Butter");
			document.myFood.subcategory.options[2] = new Option("Ice Cream",
					"Ice Cream");
			document.myFood.subcategory.options[3] = new Option("Oil", "Oil");
			break;

		case "Fruit and Vegetable":
			document.myFood.subcategory.options[0] = new Option("Select Food",
					"");
			document.myFood.subcategory.options[1] = new Option("Apple",
					"Apple");
			document.myFood.subcategory.options[2] = new Option("Carrot",
					"Carrot");
			document.myFood.subcategory.options[3] = new Option("Grape",
					"Grape");
			document.myFood.subcategory.options[3] = new Option("Eggplant",
					"Eggplant");
			break;

		}

	}
</script>


</head>


<body>

	<!-- Navbar (sit on top) -->
	<div class="w3-top">
		<div class="w3-bar w3-white w3-card" id="myNavbar">
			<a href="#home" class="w3-bar-item w3-button w3-wide"
				style="color: #8c627b;">KATODIET</a>
			<!-- Right-sided navbar links -->
			<div class="w3-right w3-hide-small">
				<a href="#nutrition" class="w3-bar-item w3-button">NUTRITION</a> <a
					href="#weight" class="w3-bar-item w3-button">WEIGHT</a> <a
					href="#fitness" class="w3-bar-item w3-button">FITNESS</a> <a
					href="#display" class="w3-bar-item w3-button">DISPLAY MY
					PROGRESS</a> <a href="Login.jsp" class="w3-bar-item w3-button">LOGOUT</a>
			</div>

			<!-- Hide right-floated links on small screens and replace them with a menu icon -->
			<a href="javascript:void(0)"
				class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium"
				onclick=""> <i class="fa fa-bars"></i>
			</a>
		</div>
	</div>


	<!-- Header with full-height image -->
	<header class="bgimg-1 w3-display-container w3-grayscale-min" id="home">
		<div class="w3-display-left w3-text-white" style="padding: 48px">
			<span class="w3-jumbo w3-hide-small">Start something that
				matters</span><br> <span
				class="w3-xxlarge w3-hide-large w3-hide-medium">Start
				something that matters</span><br> <span class="w3-large">Stop
				wasting valuable time with projects that just isn't you.</span>
			<p>
				<a href="#nutrition"
					class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off">What
					did you eat today ?</a>
			</p>
			<p>
				<a href="#weight"
					class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off">Whats
					your BMI ?</a>
			</p>
			<p>
				<a href="#fitness"
					class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off">Did
					you exercised ?</a>
			</p>
			<p>
				<a href="#display"
					class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off">Want
					to see your progress?</a>
			</p>
		</div>

		<!-- icon-->
		<div class="w3-display-bottomleft w3-text-grey w3-large"
			style="padding: 24px 48px">
			<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
				class="fa fa-instagram w3-hover-opacity"></i> <i
				class="fa fa-snapchat w3-hover-opacity"></i> <i
				class="fa fa-pinterest-p w3-hover-opacity"></i> <i
				class="fa fa-twitter w3-hover-opacity"></i> <i
				class="fa fa-linkedin w3-hover-opacity"></i>
		</div>
	</header>

	<!-- First Grid -->
	<div class="w3-row-padding w3-padding-64 w3-container" id="nutrition">
		<div class="w3-content">
			<div class="w3-twothird">
				<h1>I've eaten today!</h1>
				<h5>Please input food details here</h5>
				<table style="width: 150%">
					<tr>
						<td style="width: 70px">
							<div>
								<img
									src="https://i.pinimg.com/originals/f1/fd/be/f1fdbecaf0b652a60432dee40645fa01.jpg">

							</div>
						</td>



						<td>
							<div class="testbox">


								<form name="myFood" id="myFood"
									action="KatoDietController?action=SAVEFOOD"
									onSubmit="return validateForm()" method="post">

									<fieldset>
										<legend>Food Intake Information</legend>
										<p style="color: #b50e0e">${NUTRITION_NOTIFICATION}</p>
										<div class="item">
											<label for="userid">User ID<span>*</span></label> <input
												id="userid" type="text" name="userid" value="${user.userID}"
												readonly />
										</div>
										<div class="item">
											<label for="bdate">Date <span>*</span></label> <input
												id="bdate" type="date" name="bdate" min="2022-01-01"
												max="2030-12-31" /> <i class="fas fa-calendar-alt"></i>
										</div>
										<div class="item">
											<label for="time">Time :<span>*</span></label>
											<input type="time" id="time" name="ftime" value="${food.time}">
										</div>

										<div class="item">
											<p>
												Food Category <span>*</span>
											</p>
											<select name="category" id="category"
												onchange="javascript: dropdownlist(this.options[this.selectedIndex].value);">
												<option value="">Select Category</option>
												<option value="Carbohydrate">Carbohydrate</option>
												<option value="Protein">Protein</option>
												<option value="Fat">Fat</option>
												<option value="Fruit and Vegetable">Fruit and
													Vegetable</option>
											</select>
										</div>


										<div class="item">
											<p>Food Name</p>
											<script type="text/javascript">
												document
														.write(
																'<select name="subcategory" onchange="javascript: changeSubcat(this.options[this.selectedIndex].value);')
											</script>
											<noscript>

												<select name="subcategory" id="subcategory">
													<option value="">Select Food</option>
												</select>
											</noscript>

										</div>

										<div class="item">
											<label for="calories"> Calories Intake<span>*</span></label>
											<input id="calories" type="text" name="calories"
												placeholder="Enter calories intake" />
										</div>
										<div class="btn-block">
											<button type="submit"
												class="w3-button w3-white w3-opacity w3-hover-opacity-off"
												name="save" value="Save">Save</button>
											<button type="reset"
												class="w3-button w3-white w3-opacity w3-hover-opacity-off"
												name="reset" value="Reset">Reset</button>

										</div>
									</fieldset>

								</form>
							</div>
						</td>
					</tr>

				</table>
			</div>
		</div>
	</div>


	<!-- Second Grid -->
	<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container"
		id="weight">
		<div class="w3-content">
			<div class="w3-twothird">

				<h1>Lets manage my BMI !</h1>
				<h5>Please input weight and height details here</h5>
				<p style="color: #b50e0e">${WEIGHT_NOTIFICATION}</p>

				<div class="textbox">

					<form style="background: #a16271;" name="myWeight"
						action="KatoDietController?action=ADDWEIGHT"
						onSubmit="return validateWeightForm()" method="POST">

						<fieldset>
							<legend>Weight and Height Detail</legend>

							<div class="item">
								<label for="userid"> User ID :<span>*</span></label> <input
									type="text" name="userid" value="${user.userID}">
							</div>

							<div class="item">
								<label for="start">Date :<span>*</span></label> <input
									type="date" id="start" name="date" min="2022-01-01"
									max="2030-12-31" required>
							</div>

							<div class="item">
								<label for="weight">Add a weight :<span>*</span></label> <input
									type="text" name="weight" placeholder="Enter in KG">
							</div>

							<div class="item">
								<label for="height"> Add a height :<span>*</span></label> <input
									type="text" name="height" placeholder="Enter in m">
							</div>

							<div class="btn-block">
								<button type="submit"
									class="w3-button w3-white w3-opacity w3-hover-opacity-off">Submit</button>
								<button type="reset"
									class="w3-button w3-white w3-opacity w3-hover-opacity-off">Reset</button>

							</div>
						</fieldset>
					</form>
				</div>
				<div style="position: absolute; right: 200px; top: 2050px;">
					<iframe src="https://giphy.com/embed/Tc40wWSzxxRBtCtHLI"
						width="350" height="350" frameBorder="0" class="giphy-embed"
						allowFullScreen></iframe>
					<p>
						<a
							href="https://giphy.com/gifs/love-yourself-weight-you-are-perfect-Tc40wWSzxxRBtCtHLI">via
							GIPHY</a>
					</p>
				</div>

			</div>
		</div>
	</div>

	<!-- Third Grid -->
	<div class="w3-row-padding w3-padding-64 w3-container" id="fitness">
		<div class="w3-content">
			<div class="w3-twothird">
				<h1>Yes, I've exercise today!</h1>
				<h5>Please enter your exercise details here</h5>
				<p style="color: #b50e0e">${EXERCISE_NOTIFICATION}</p>


				<form style="background: #745c64;" name="fitnessform"
					action="KatoDietController?action=ADDEXERCISE"
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
								max="2030-12-31" required>
						</div>

						<div class="item">
							<label for="time">Select a time :<span>*</span></label> <input
								type="time" id="time" name="time">
						</div>

						<div class="item">
							<label for="sport">Select a sport :<span>*</span></label> <select
								name="sport" style="width: 45%;">
								<option selected value="" disabled selected>Please
									select an Option:</option>
								<option value="Bicycling">Bicycling</option>
								<option value="Hiking">Hiking</option>
								<option value="Running">Running</option>
								<option value="Swimming">Swimming</option>
								<option value="Walking">Walking</option>
							</select>
						</div>

						<div class="item">
							<label for="duration">Select duration :<span>*</span></label> <select
								name="duration" style="width: 45%;">
								<option value="">Please select an Option:</option>
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
								class="w3-button w3-white w3-opacity w3-hover-opacity-off">Submit</button>
							<button type="reset"
								class="w3-button w3-white w3-opacity w3-hover-opacity-off">Reset</button>

						</div>


					</fieldset>


				</form>
				<div style="position: absolute; right: 200px; top: 3050px;">
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

	<!-- Display Grid -->
	<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container"
		id="display">
		<div class="w3-content">
			<div class="w3-twothird">
				<form action="KatoDietController?action=DISPLAY" method="POST">
					<label>Hello User</label> <input type="text" name="userid"
						value="${user.userID}"> <label>Would you like to
						see your progress?</label> <input type="submit" value="YES">
				</form>
			</div>
		</div>
	</div>
	<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
		<h1 class="w3-margin w3-xlarge">"Time and health are two precious
			assets that we don't recognize and appreciate until they have been
			depleted."</h1>
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