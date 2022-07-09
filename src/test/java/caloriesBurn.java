
import junit.framework.TestCase;

public class caloriesBurn extends TestCase {

	void test1() {
		
		
		String date = "16/5/2022";
		String Time = "2:30 PM";
		String exercise_type = "Bicycling";
		double duration = 2.5;
		double bicycle = 292;
		caloriesBurn p = new caloriesBurn();
		double expectedOutput = 2.5 * 292;
		double actualOutput = p.setCaloriesBurn(date, Time, exercise_type, duration);
		
		//assertEquals - reserve words for junit testing = to compare between expected and actual
		assertEquals(expectedOutput, actualOutput);
	}
}
