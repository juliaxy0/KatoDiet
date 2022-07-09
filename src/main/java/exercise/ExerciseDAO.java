package exercise;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ExerciseDAO {
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;

	public boolean save(exercise u) {
		boolean flag = false;

		try {
			String sql = "INSERT INTO exercise(exerciseuserid,exercisedate, exercisetime, exercisetype, exduration)VALUES"
					+ "('" + u.getUserid() + "','" + u.getDate() + "','" + u.getTime() + "', '" + u.getExercise_type()
					+ "', '" + u.getDuration() + "')";
			System.out.println(u.getExercise_type());
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
	public boolean delete(String time,String userid) {
		boolean flag = false;
		try {
		String sql = "DELETE FROM exercise where exercisetime='" + time +"' and exerciseuserid='"+userid+"'";
		connection = DBConnectionUtil.openConnection();
		preparedStatement = connection.prepareStatement(sql);
		preparedStatement.executeUpdate();
		flag = true;
		} catch (SQLException e) {
		e.printStackTrace();
		}
		return flag;
		}

	public List<exercise> getExercise(String userid) {
		List<exercise> list = null;
		exercise exercise = new exercise();

		try {
			list = new ArrayList<exercise>();
			String sql = "SELECT * FROM exercise where exerciseuserid = '" + userid + "'order by exerciseuserid asc";
			connection = DBConnectionUtil.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);

			// calc burn
			while (resultSet.next()) {
				exercise = new exercise();
				exercise.setUserid(resultSet.getString("exerciseuserid"));
				exercise.setDate(resultSet.getString("exercisedate"));
				exercise.setTime(resultSet.getString("exercisetime"));
				String exerType = resultSet.getString("exercisetype");
				String duraTion = resultSet.getString("exduration");
				exercise.setExercise_type(exerType);
				exercise.setDuration(duraTion);
				exercise.setCaloriesBurn(exerType, duraTion);

				list.add(exercise);
			}
		} catch (Exception e) {
		}

		return list;
	}

	public boolean updateExercise(exercise exercise) {
		boolean flag = false;
		try {
			String sql = "UPDATE exercise SET exercisetype ='" + exercise.getExercise_type() + "', exduration = '"
					+ exercise.getDuration() + "' where exercisetime='" + exercise.getTime() + "'"
					+ " and exerciseuserid = '" + exercise.getUserid() + "'";
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
	
	public exercise get(String time) {
		exercise exercise = null;
		try {
		exercise = new exercise();
		String sql = "SELECT * FROM exercise where exercisetime= '" + time +"'";
		System.out.println(sql);
		connection = DBConnectionUtil.openConnection();
		statement = connection.createStatement();
		resultSet = statement.executeQuery(sql);

		if (resultSet.next()) {
			exercise.setUserid(resultSet.getString("exerciseuserid"));
			exercise.setDate(resultSet.getString("exercisedate"));
			exercise.setTime(resultSet.getString("exercisetime"));
			String exerType = resultSet.getString("exercisetype");
			String duraTion = resultSet.getString("exduration");
			exercise.setExercise_type(exerType);
			exercise.setDuration(duraTion);
			exercise.setCaloriesBurn(exerType, duraTion);
		}
		} catch (SQLException e) {
		e.printStackTrace();
		}
		return exercise;
		}

}
