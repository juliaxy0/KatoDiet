package exercise;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FoodDAO {
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;

	public boolean save(Food u) {
		boolean flag = false;

		try {

			String sql = "INSERT INTO food(fooduserid, foodDate, foodCat, foodDesc, foodCalories,foodtime)VALUES"
					+ "('" + u.getUserid() + "','" + u.getBdate() + "','" + u.getFoodcat() + "','" + u.getDesc() + "','"
					+ u.getCalories() + "', '" + u.getTime() + "')";
			connection = DBConnectionUtil.openConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	public List<Food> getFood(String userid) {
		List<Food> list = null;
		Food food = new Food();
		double sum;

		try {
			list = new ArrayList<Food>();
			String sql = "select fooduserid,fooddate,foodTime,foodcalories from food where fooduserid = '"
					+ userid + "'";
			connection = DBConnectionUtil.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {

				food = new Food();
				food.setBdate(resultSet.getString("fooddate"));
				food.setTime(resultSet.getString("foodTime"));
				food.setCalories(resultSet.getDouble("foodcalories"));
				list.add(food);
			}
		} catch (Exception e) {
		}
		return list;
	}

	public boolean updateFood(Food food) {
		boolean flag = false;
		try {
			String sql = "UPDATE food SET foodcalories ='" + food.getCalories() + "', fooddesc = '" + food.getDesc() + "', foodcat = '" + food.getFoodcat() + "' where foodtime='" + food.getTime() + "'" + " and fooduserid = '" + food.getUserid() + "'";
			
			System.out.println(sql);
			connection = DBConnectionUtil.openConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	public Food get(String time) {
		Food food = null;
		try {
		food = new Food();
		String sql = "SELECT * FROM food where foodtime = '" + time +"'";
		System.out.println(sql);
		connection = DBConnectionUtil.openConnection();
		statement = connection.createStatement();
		resultSet = statement.executeQuery(sql);

		if (resultSet.next()) {
			food.setBdate(resultSet.getString("fooddate"));
			food.setTime(resultSet.getString("foodtime"));
			food.setFoodcat(resultSet.getString("foodcat"));
			food.setDesc(resultSet.getString("fooddesc"));
			double calories = resultSet.getDouble("foodcalories");
			food.setCalories(calories);

		}
		} catch (SQLException e) {
		e.printStackTrace();
		}
		return food;
		}
	
	public boolean delete(String date,String userid) {
		boolean flag = false;
		try {
		String sql = "DELETE FROM food where fooddate='" + date +"' and fooduserid='"+userid+"'";
		connection = DBConnectionUtil.openConnection();
		preparedStatement = connection.prepareStatement(sql);
		preparedStatement.executeUpdate();
		flag = true;
		} catch (SQLException e) {
		e.printStackTrace();
		}
		return flag;
		}
}
