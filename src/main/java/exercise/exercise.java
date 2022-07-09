package exercise;

public class exercise {
	String userid;
	String date;
	String time;
	String exercise_type;
	String duration;
	String caloriesBurn;
	Boolean message = false;

	public String getCaloriesBurn() {
		return caloriesBurn;
	}

	public void setCaloriesBurn(String exercise_type, String duration) {
		
		double durationX = Double.parseDouble(duration);
		switch(exercise_type) {
			case "Bicycling":
				caloriesBurn = Double.toString(durationX * 292);
				break;
			case "Hiking" : 
				caloriesBurn = Double.toString(durationX * 438);
				break;
			case "Running" :
				caloriesBurn = Double.toString(durationX * 606);
				message = true;
				break;
			case "Swimming" :
				caloriesBurn = Double.toString(durationX * 423);
				message = true;
				break;
			case "Walking" :
				caloriesBurn = Double.toString(durationX * 314);
				message = true;
				break;
				
		}
		
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		message = false;
		if(date != null) {
			this.date = date;
			message = true;
		}
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		message = false;
		if(time != null){
			message = true;
			this.time = time;
		}
	}

	public String getExercise_type() {
		return exercise_type;
	}

	public void setExercise_type(String exercise_type) {
		message = false;
		if ((exercise_type == "Bicycling") || (exercise_type == "Hiking") ||
				(exercise_type == "Hiking")||(exercise_type == "Hiking")||(exercise_type == "Hiking")){
			this.exercise_type = exercise_type;
			message = true;
		}
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String string) {
		message = false;
		if ((time=="0.5")|| (time=="1") ||(time=="1.5")||
				(time=="2")||(time=="2.5")||(time=="3")||(time=="3.5")||
				(time=="4") || (time=="4.5"||(time=="5"))){
				message = true;
				this.duration = string;
		}
	}
}