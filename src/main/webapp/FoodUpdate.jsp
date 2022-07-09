
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

  

</head>


<body>
<script language="javascript" type="text/javascript">
	

	function validateForm() {
	
		if (document.myFood.category.value.selectedIndex == 0){
			alert("Please key-in food category");
			return false;
		}
		if (document.myFood.subcategory.selectedIndex == 0) {
			alert("Please key-in food description");
			return false;
		}
		if (document.myFood.foodcalories.value == null
				|| document.myFood.foodcalories.value == "") {
			alert("Please key-in calories intake");
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


								<form name="myFood" id="myFood" action="KatoDietController?action=UPDATEFOOD"
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
												id="bdate" type="date" name="bdate"  value="${food.bdate}" min="2022-01-01"
												max="2030-12-31" /> <i class="fas fa-calendar-alt"></i>
										</div>
																<div class="item">
									<label for="time">Time <span>*</span></label> 
									<input type="time" id="time" name="ftime" value="${food.time}" readonly><i class="fas fa-calendar-alt"></i>
									</div>

										<div class="item">
											<p>
												Food Category <span>*</span>
											</p>
											<select name="category" id="category"
												onchange="javascript: dropdownlist(this.options[this.selectedIndex].value);">
												<option  value="${food.foodcat}">Choose food category</option>
												<option value="Carbohydrate">Carbohydrate</option>
												<option value="Protein">Protein</option>
												<option value="Fat">Fat</option>
												<option value="Fruit and Vegetable">Fruit and Vegetable</option>
											</select>
										</div>


									<div class="item">
										<p>Food Name</p>
											<script type="text/javascript" >
            document.write('<select name="subcategory" onchange="javascript: changeSubcat(this.options[this.selectedIndex].value);')
          </script>
											<noscript>
												
												<select name="subcategory" id="subcategory" >
													<option  value="${food.desc}">choose food subcategory</option>
												</select>
											</noscript>
											
										</div>

										<div class="item">
											<label for="calories"> Calories Intake<span>*</span></label>
											<input id="calories" type="text" name="foodcalories"
												  value="${food.calories}"/>
										</div>
										<div class="btn-block">
											<button type="submit"
												class="w3-button w3-white w3-opacity w3-hover-opacity-off"
												name="save" value="Save">Update</button>
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


</body>
</html>