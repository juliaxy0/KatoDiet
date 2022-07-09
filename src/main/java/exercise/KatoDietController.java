package exercise;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class KatoDietController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RegisterDAO regDAO = null;
	WeightDAO wegDAO = null;
	FoodDAO foodDAO = null;
	ExerciseDAO exDAO = null;
	String clickLogin = "";
	RequestDispatcher rd = null;

	public KatoDietController() {
		regDAO = new RegisterDAO();
		wegDAO = new WeightDAO();
		foodDAO = new FoodDAO();
		exDAO = new ExerciseDAO();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

		switch (action) {
		case "LOGIN":
			Login(request, response);
			break;
		case "ADDUSER":
			saveUser(request, response);
			break;
		case "ADDEXERCISE":
			saveExercise(request, response);
			break;
		case "ADDWEIGHT":
			saveWeight(request, response);
			break;
		case "SAVEFOOD":
			saveFood(request, response);
			break;
		case "GETUPDATEEXERCISE":
			getUpdateExercise(request, response);
			break;
		case "UPDATEEXERCISE":
			updateExercise(request, response);
			break;
		case "GETUPDATEWEIGHT":
			getUpdateWeight(request, response);
			break;
		case "UPDATEWEIGHT":
			updateWeight(request, response);
			break;
		case "GETUPDATEFOOD":
			getUpdateFood(request, response);
			break;
		case "UPDATEFOOD":
			updateFood(request, response);
			break;
		case "DELETEEXERCISE":
			deleteExercise(request, response);
			break;
		case "DELETEWEIGHT":
			deleteWeight(request, response);
			break;
		case "DELETEFOOD":
			deleteFood(request, response);
			break;
		case "DISPLAY":
			Display(request, response);
			break;
		case "BACK":
			Back(request, response);
			break;
		}
	}

	// back button
	private void Back(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());

		String userid = request.getParameter("userid");
		User theUser = regDAO.get(userid);
		request.setAttribute("user", theUser);

		rd = request.getRequestDispatcher("/KatoDietInterface.jsp");
		rd.forward(request, response);
	}

	// display
	private void Display(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		// userid
		String userid = request.getParameter("userid");
		User theUser = regDAO.get(userid);
		request.setAttribute("user", theUser);

		// food
		FoodDAO fdao = new FoodDAO();
		List<Food> foodList = fdao.getFood(userid);
		request.setAttribute("food", foodList);

		// exercise
		ExerciseDAO edao = new ExerciseDAO();
		List<exercise> exerciseList = edao.getExercise(userid);
		request.setAttribute("exercise", exerciseList);

		// weight
		WeightDAO wdao = new WeightDAO();
		List<Weight> weightList = wdao.getWeight(userid);
		request.setAttribute("weight", weightList);

		RequestDispatcher rd = request.getRequestDispatcher("/Display.jsp");
		rd.forward(request, response);

	}

	// user
	protected void saveUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		User u = new User();
		u.setFullName(request.getParameter("fullname"));
		u.setUserID(request.getParameter("userID"));
		u.setPassword(request.getParameter("password"));
		u.setBOD(request.getParameter("BOD"));
		u.setGender(request.getParameter("gender"));

		if (regDAO.save(u)) {
			request.setAttribute("USER_NOTIFICATION", "User Registered Successfully!");
		}

		request.setAttribute("user", u);
		RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
		rd.forward(request, response);
	}
	

	private void Login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		String userid = request.getParameter("userID");
		String password = request.getParameter("password");
		boolean passwordFound = regDAO.checkPassword(password);
		boolean userFound = regDAO.checkUser(userid);

		if (userFound && passwordFound) {
			User theUser = regDAO.get(userid);
			request.setAttribute("user", theUser);
			clickLogin = "Display";
			rd = request.getRequestDispatcher("/KatoDietInterface.jsp");
			rd.forward(request, response);

		} else {
			request.setAttribute("USER_NOTIFICATION", "User Not Found!");
			rd = request.getRequestDispatcher("/Login.jsp");
			rd.forward(request, response);

		}

	}
	
	
	// food

	private void saveFood(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Food f = new Food();
		f.setUserid(request.getParameter("userid"));
		f.setBdate(request.getParameter("bdate"));
		f.setTime(request.getParameter("ftime"));
		f.setFoodcat(request.getParameter("category"));
		f.setDesc(request.getParameter("subcategory"));
		f.setCalories(Double.parseDouble(request.getParameter("calories")));

		if (foodDAO.save(f)) {
			request.setAttribute("NUTRITION_NOTIFICATION", "Nutrition recorded successfully");
		} else
			request.setAttribute("NUTRITION_NOTIFICATION",
					"Record unsucceessful, please choose another date, description or category");

		// userid
		String userid = f.getUserid();
		User theUser = regDAO.get(userid);
		request.setAttribute("user", theUser);
		request.setAttribute("food", f);

		RequestDispatcher rd = request.getRequestDispatcher("/KatoDietInterface.jsp");
		rd.forward(request, response);
	}

	private void getUpdateFood(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		// userid
		String userid = request.getParameter("userid");
		User theUser = regDAO.get(userid);
		request.setAttribute("user", theUser);

		String time = request.getParameter("ftime");
		Food food = foodDAO.get(time);

		request.setAttribute("food", food);
		rd = request.getRequestDispatcher("/FoodUpdate.jsp");
		rd.forward(request, response);
	}

	private void updateFood(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		// userid
		String userid = request.getParameter("userid");
		User theUser = regDAO.get(userid);
		request.setAttribute("user", theUser);

		Food f = new Food();
		f.setUserid(request.getParameter("userid"));
		f.setFoodcat(request.getParameter("category"));
		f.setDesc(request.getParameter("subcategory"));
		f.setCalories(Double.parseDouble(request.getParameter("foodcalories")));
		System.out.println(request.getParameter("calories"));
		f.setTime(request.getParameter("ftime"));
		f.setBdate(request.getParameter("bdate"));

		if (foodDAO.updateFood(f)) {
			request.setAttribute("NUTRITION_NOTIFICATION", "Nutrition recorded successfully");
		} else {
			request.setAttribute("NUTRITION_NOTIFICATION",
					"Record unsucceessful, please choose another date, description or category");
		}

		Food foodList = foodDAO.get(request.getParameter("ftime"));
		request.setAttribute("food", foodList);
		RequestDispatcher rd = request.getRequestDispatcher("/KatoDietInterface.jsp");
		rd.forward(request, response);
	}

	private void deleteFood(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// userid
		String userid = request.getParameter("userid");
		User theUser = regDAO.get(userid);
		request.setAttribute("user", theUser);
		String date = request.getParameter("bdate");

		if (foodDAO.delete(date, userid)) {
			request.setAttribute("NOTIFICATION", "Food Information Deleted Successfully!");

		}

		// userid
		request.setAttribute("user", theUser);

		// food
		FoodDAO fdao = new FoodDAO();
		List<Food> foodList = fdao.getFood(userid);
		request.setAttribute("food", foodList);

		// exercise
		ExerciseDAO edao = new ExerciseDAO();
		List<exercise> exerciseList = edao.getExercise(userid);
		request.setAttribute("exercise", exerciseList);

		// weight
		WeightDAO wdao = new WeightDAO();
		List<Weight> weightList = wdao.getWeight(userid);
		request.setAttribute("weight", weightList);

		RequestDispatcher rd = request.getRequestDispatcher("/Display.jsp");
		rd.forward(request, response);

	}

	// exercise
	protected void saveExercise(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		exercise e = new exercise();
		e.setUserid(request.getParameter("userid"));
		e.setDate(request.getParameter("date"));
		e.setTime(request.getParameter("time"));
		e.setExercise_type(request.getParameter("sport"));
		e.setDuration(request.getParameter("duration"));

		if (exDAO.save(e)) {
			request.setAttribute("EXERCISE_NOTIFICATION", "Exercise recorded Successfully!");
		} else
			request.setAttribute("EXERCISE_NOTIFICATION", "Record unsucceessful, please choose another date or time");

		// userid
		String userid = e.getUserid();
		User theUser = regDAO.get(userid);
		request.setAttribute("user", theUser);
		request.setAttribute("exercise", e);
		RequestDispatcher rd = request.getRequestDispatcher("/KatoDietInterface.jsp");
		rd.forward(request, response);

	}

	private void getUpdateExercise(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		// userid
		String userid = request.getParameter("userid");
		User theUser = regDAO.get(userid);
		request.setAttribute("user", theUser);

		String time = request.getParameter("time");
		exercise exercise = exDAO.get(time);

		request.setAttribute("exercise", exercise);
		rd = request.getRequestDispatcher("/ExerciseUpdate.jsp");
		rd.forward(request, response);
	}

	private void updateExercise(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		// userid
		String userid = request.getParameter("userid");
		User theUser = regDAO.get(userid);
		request.setAttribute("user", theUser);

		exercise exercise = new exercise();
		exercise.setUserid(request.getParameter("userid"));
		exercise.setTime(request.getParameter("time"));
		exercise.setExercise_type(request.getParameter("exerciseType"));
		exercise.setDuration(request.getParameter("exduration"));
		exercise.setCaloriesBurn(request.getParameter("caloriesBurn"));

		if (exDAO.updateExercise(exercise)) {
			request.setAttribute("EXERCISE_NOTIFICATION", "Exercise recorded Successfully!");
		} else
			request.setAttribute("EXERCISE_NOTIFICATION", "Record unsucceessful, please choose another date or time");

		exercise exerciseList = exDAO.get(request.getParameter("time"));
		request.setAttribute("exercise", exerciseList);
		RequestDispatcher rd = request.getRequestDispatcher("/KatoDietInterface.jsp");
		rd.forward(request, response);
	}

	// delete Exercise
	private void deleteExercise(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userid = request.getParameter("userid");
		User theUser = regDAO.get(userid);
		request.setAttribute("user", theUser);
		String time = request.getParameter("time");

		if (exDAO.delete(time, userid)) {
			request.setAttribute("NOTIFICATION", "Exercise Information Deleted Successfully!");

		}

		// userid
		request.setAttribute("user", theUser);

		// food
		FoodDAO fdao = new FoodDAO();
		List<Food> foodList = fdao.getFood(userid);
		request.setAttribute("food", foodList);

		// exercise
		ExerciseDAO edao = new ExerciseDAO();
		List<exercise> exerciseList = edao.getExercise(userid);
		request.setAttribute("exercise", exerciseList);

		// weight
		WeightDAO wdao = new WeightDAO();
		List<Weight> weightList = wdao.getWeight(userid);
		request.setAttribute("weight", weightList);

		RequestDispatcher rd = request.getRequestDispatcher("/Display.jsp");
		rd.forward(request, response);

	}

	// weight
	protected void saveWeight(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Weight w = new Weight();
		w.setUserid(request.getParameter("userid"));
		w.setDateday(request.getParameter("date"));
		w.setWeight(request.getParameter("weight"));
		w.setHeight(request.getParameter("height"));

		if (wegDAO.save(w)) {
			request.setAttribute("WEIGHT_NOTIFICATION", "Weight recorded Successfully!");
		} else
			request.setAttribute("WEIGHT_NOTIFICATION", "Record unsucceessful, please choose another date or time");

		// userid
		String userid = w.getUserid();
		User theUser = regDAO.get(userid);
		request.setAttribute("user", theUser);
		request.setAttribute("weight", w);
		RequestDispatcher rd = request.getRequestDispatcher("/KatoDietInterface.jsp");
		rd.forward(request, response);
	}

	private void getUpdateWeight(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		// userid
		String userid = request.getParameter("userid");
		User theUser = regDAO.get(userid);
		request.setAttribute("user", theUser);

		String bdate = request.getParameter("bdate");
		Weight weight = wegDAO.get(bdate);

		request.setAttribute("weight", weight);
		rd = request.getRequestDispatcher("/WeightUpdate.jsp");
		rd.forward(request, response);
	}

	private void updateWeight(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		// userid
		String userid = request.getParameter("userid");
		User theUser = regDAO.get(userid);
		request.setAttribute("user", theUser);

		Weight weight = new Weight();
		weight.setUserid(request.getParameter("userid"));
		weight.setDateday(request.getParameter("dateday"));
		weight.setWeight(request.getParameter("weight"));
		weight.setHeight(request.getParameter("height"));

		if (wegDAO.updateWeight(weight)) {
			request.setAttribute("WEIGHT_NOTIFICATION", "Weight recorded Successfully!");
		} else
			request.setAttribute("WEIGHT_NOTIFICATION", "Record unsucceessful, please choose another date or time");

		Weight weightList = wegDAO.get(request.getParameter("bdate"));
		request.setAttribute("weight", weightList);
		RequestDispatcher rd = request.getRequestDispatcher("/KatoDietInterface.jsp");
		rd.forward(request, response);
	}

	private void deleteWeight(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userid = request.getParameter("userid");
		User theUser = regDAO.get(userid);
		request.setAttribute("user", theUser);
		String date = request.getParameter("bdate");

		if (wegDAO.delete(date, userid)) {
			request.setAttribute("NOTIFICATION", "Weight Information Deleted Successfully!");

		}

		// userid
		request.setAttribute("user", theUser);

		// food
		FoodDAO fdao = new FoodDAO();
		List<Food> foodList = fdao.getFood(userid);
		request.setAttribute("food", foodList);

		// exercise
		ExerciseDAO edao = new ExerciseDAO();
		List<exercise> exerciseList = edao.getExercise(userid);
		request.setAttribute("exercise", exerciseList);

		// weight
		WeightDAO wdao = new WeightDAO();
		List<Weight> weightList = wdao.getWeight(userid);
		request.setAttribute("weight", weightList);

		RequestDispatcher rd = request.getRequestDispatcher("/Display.jsp");
		rd.forward(request, response);
	}
}
