package exercise;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class KatoDietTest {
	


	@Test
	void test1() {
		
		exercise e = new exercise();
		
		e.setDate("11-12-2022");
		boolean msg1 = e.message;
		e.setTime(null);
		boolean msg2 = e.message;
		e.setDuration("1.5");
		boolean msg3 = e.message;
		e.setExercise_type("hello");
		boolean msg4 = e.message;
		

		boolean expectedOutput = true;
		
		//assertEquals - reserve words for junit testing = to compare between expected and actual
		
		assertEquals(expectedOutput, msg1);
		assertEquals(expectedOutput, msg2);
		assertEquals(expectedOutput, msg3);
		assertEquals(expectedOutput, msg4);
		
	}

}
