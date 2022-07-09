package exercise;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class RegisterDAO {
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;

	public boolean save(User u) {
		boolean flag = false;

		try {
			String sql = "INSERT INTO kduser(userID, fullname, password, dob, gender)VALUES" + "('" + u.getUserID()
					+ "','" + u.getFullName() + "', '" + u.getPassword() + "', '" + u.getBOD() + "', '" + u.getGender()
					+ "')";

			System.out.println(sql);
			connection = DBConnectionUtil.openConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	public User get(String userid) {
		User user = null;
		try {
			user = new User();
			String sql = "SELECT * FROM kduser where userid='" + userid + "'";
			connection = DBConnectionUtil.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			if (resultSet.next()) {
				user.setFullName(resultSet.getString("fullname"));
				user.setUserID(resultSet.getString("userid"));
				user.setPassword(resultSet.getString("password"));
				user.setBOD(resultSet.getString("dob"));
				user.setGender(resultSet.getString("gender"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	public boolean checkUser(String userID) {
		Boolean found = false;
		try {
			String sql = "SELECT * FROM kduser where userid='" + userID + "'";
			connection = DBConnectionUtil.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			if (resultSet.next()) {
				found = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return found;
	}
	
	public boolean checkPassword(String password) {
		Boolean found = false;
		try {
			String sql = "SELECT * FROM kduser where password='" + password + "'";
			connection = DBConnectionUtil.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			if (resultSet.next()) {
				found = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return found;
	}
}