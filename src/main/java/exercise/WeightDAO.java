package exercise;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class WeightDAO {
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;

	public boolean save(Weight u) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO weightdetail(weigDetUserid,weigDetDate, weigDetWeight, weigDetHeight)VALUES" + "('"
					+ u.getUserid() + "','" + u.getDateday() + "','" + u.getWeight() + "', '" + u.getHeight() + "')";
			connection = DBConnectionUtil.openConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return flag;
	}
	
	public boolean delete(String date,String userid) {
		boolean flag = false;
		try {
		String sql = "DELETE FROM weightdetail where weigdetdate='" + date +"' and weigdetuserid='"+userid+"'";
		connection = DBConnectionUtil.openConnection();
		preparedStatement = connection.prepareStatement(sql);
		preparedStatement.executeUpdate();
		flag = true;
		} catch (SQLException e) {
		e.printStackTrace();
		}
		return flag;
		}
	
	public List<Weight> getWeight(String userid) {

		List<Weight> list = null;
		Weight weight = new Weight();

	
		try {
			list = new ArrayList<Weight>();
			String sql = "select * from weightdetail where weigDetUserid = '" + userid +"'";
					

			connection = DBConnectionUtil.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				weight = new Weight();
				weight.setDateday(resultSet.getString("weigDetDate"));
				weight.setWeight(Double.toString(resultSet.getDouble("weigDetWeight")));

				double weightbmi = resultSet.getDouble("weigDetWeight");
				double heightbmi = resultSet.getDouble("weigDetHeight");
			
				double bmi = Math.round((weightbmi / (heightbmi * heightbmi)) * 100.0) / 100.0;
				weight.setStatus(bmi);

				
				weight.setBmi(bmi);
				list.add(weight);
			}

		} catch (Exception e) {

		}
		return list;
	}
	
	public boolean updateWeight(Weight weight) {
		boolean flag = false;
		try {
			String sql = "UPDATE weightdetail SET weigdetheight ='" + weight.getHeight() + "', weigDetweight = '" + weight.getWeight() + "' where weigdetdate='" + weight.getDateday() + "'" + " and weigdetuserid = '" + weight.getUserid() + "'";
			connection = DBConnectionUtil.openConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	public Weight get(String bdate) {
		Weight weight = null;
		try {
		weight = new Weight();
		String sql = "SELECT * FROM weightdetail where weigdetdate = '" + bdate +"'";
		connection = DBConnectionUtil.openConnection();
		statement = connection.createStatement();
		resultSet = statement.executeQuery(sql);

		if (resultSet.next()) {
			weight.setDateday(resultSet.getString("weigdetdate"));
			weight.setHeight(Double.toString(resultSet.getDouble("weigdetheight")));
			weight.setWeight(Double.toString(resultSet.getDouble("weigdetweight")));
			weight.setUserid(resultSet.getString("weigdetuserid"));
		}
		} catch (SQLException e) {
		e.printStackTrace();
		}
		return weight;
		}
}
